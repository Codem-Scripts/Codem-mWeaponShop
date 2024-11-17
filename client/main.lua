local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX = exports["es_extended"]:getSharedObject()
local HasAlreadyEnteredMarker = false
local LastZone = nil
local CurrentAction = nil
local CurrentActionMsg = ''
local CurrentActionData = {}
local ShopOpen = false
local WeaponAttachments = {}
local WeaponDatas = {}
local total = 0
local WeaponTint = nil
local WeaponCTint = nil
local SkinPrice = nil
local WeaponAttachment = {}
local weaponCamera = {}
local WEAPON = { OBJ = nil}

Citizen.CreateThread(function()
	ESX.PlayerData = ESX.GetPlayerData()
	GetWeaponAttachmentData()
	GetWeaponData()
end)

RegisterNetEvent('moneyUpdate')
AddEventHandler('moneyUpdate', function(money)
	ESX.PlayerData.money = money
end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(xPlayer)
	Wait(30000)
	ESX.PlayerData.money = xPlayer.money
	TriggerServerEvent("codem-weaponshop:UpdateSQLComponents", xPlayer.source)
	Wait(100)
	TriggerServerEvent("codem-weaponshop:LoadComponents", xPlayer.source)
end)


RegisterNetEvent("codem-weaponshop:LoadComponents")
AddEventHandler("codem-weaponshop:LoadComponents", function(components)
	if (components) ~= nil then
		for _,value in pairs(components) do
			for _,data in pairs(value) do
				for i=1, #data.component do
					GiveWeaponComponentToPed(PlayerPedId(), data.weaponName, GetHashKey(data.component[i]))
				end
				SetPedWeaponTintIndex(PlayerPedId(), data.weaponName, tonumber(data.tint))
			end
		end
	end
end)

AddEventHandler('codem-weaponshop:hasEnteredMarker', function(location)
	CurrentAction     = 'shop_menu'
	CurrentActionMsg  = ('Press ~INPUT_CONTEXT~ Open Weapon Shop.')
	CurrentActionData = { location = location }
end)

AddEventHandler('codem-weaponshop:hasExitedMarker', function()
	CurrentAction = nil
	ESX.UI.Menu.CloseAll()
	SetNuiFocus(false, false)
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		if ShopOpen then
			ESX.UI.Menu.CloseAll()
			DeleteWeapon(WEAPON.OBJ)
		end
	end
end)

--CreateThread
Citizen.CreateThread(function()
    for k,v in pairs(Config.Zones) do
        if v.Legal then
            for i = 1, #v.Locations, 1 do
                local blip = AddBlipForCoord(v.Locations[i])

				SetBlipSprite (blip, 567)
                SetBlipDisplay(blip, 4)
                SetBlipScale  (blip, 0.8)
                SetBlipColour (blip, 81)
                SetBlipAsShortRange(blip, true)

                BeginTextCommandSetBlipName("STRING")
                AddTextComponentSubstringPlayerName(('Weapon Shop'))
                EndTextCommandSetBlipName(blip)
            end
        end
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local coords = GetEntityCoords(PlayerPedId())
		for k,v in pairs(Config.Locations) do
			if (Config.Type ~= -1 and GetDistanceBetweenCoords(coords, v.xyz, true) < Config.DrawDistance) then
				DrawMarker(Config.Type, v.xyz, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.Size.x, Config.Size.y, Config.Size.z, Config.Color.r, Config.Color.g, Config.Color.b, 100, false, true, 2, false, false, false, false)
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local coords = GetEntityCoords(PlayerPedId())
		local isInMarker, currentZone = false, nil
		for k,v in pairs(Config.Locations) do
			if GetDistanceBetweenCoords(coords, v.xyz, true) < Config.Size.x then
				isInMarker, currentZone  = true, v
			end
		end
		if isInMarker and not HasAlreadyEnteredMarker then
			HasAlreadyEnteredMarker = true
			TriggerEvent('codem-weaponshop:hasEnteredMarker', currentZone)
		end
		if not isInMarker and HasAlreadyEnteredMarker then
			HasAlreadyEnteredMarker = false
			TriggerEvent('codem-weaponshop:hasExitedMarker')
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if CurrentAction ~= nil then
			ESX.ShowHelpNotification(CurrentActionMsg)
			if IsControlJustReleased(0, Keys['E']) then
				if CurrentAction == 'shop_menu' then
					OpenShopMenu(CurrentActionData.location)
				end
				CurrentAction = nil
			end
		end
	end
end)

--NUI
RegisterNUICallback('Close', function(data, cb)
    SetNuiFocus(false, false)
	ShopOpen = false
	isInMarker = true
	HasAlreadyEnteredMarker = false
	DeleteCamera()
	DeleteWeapon(WEAPON.OBJ)
	WEAPON.OBJ = nil
	Citizen.Wait(300)
end)

RegisterNUICallback('AddTintorSkin', function(data, cb)
	if data.type == "tint" then	
		if tonumber(data.price) <= 0 then
			total = total - SkinPrice
			SendNUIMessage({message = "UpdateTotalCost", totalCost = total})
			SkinPrice = 0
			WeaponTint = nil
		else
			if (tonumber(WeaponTint) == 0) or (WeaponTint == nil) then
				total = total + data.price
				SkinPrice = SkinPrice + data.price
				SendNUIMessage({message = "UpdateTotalCost", totalCost = total})
			end
		end
		WeaponTint = data.id
		SetWeaponObjectTintIndex(WEAPON.OBJ, tonumber(WeaponTint))
		--TriggerEvent('Notification:SendNotification', ('equip'), ("title_notification"), "success", 5000)
	elseif data.type == "skin" then	
		if tonumber(data.price) <= 0 then
			total = total - SkinPrice
			SendNUIMessage({message = "UpdateTotalCost", totalCost = total})
			SkinPrice = 0
			WeaponCTint = nil
		else
			if WeaponCTint == nil then
				total = total + data.price
				SendNUIMessage({message = "UpdateTotalCost", totalCost = total})
			end
			WeaponCTint = data.id
		end
		InitiateTints(WEAPON.OBJ, WeaponCTint)
		--TriggerEvent('Notification:SendNotification', ('equip'), ("title_notification"), "success", 5000)
	end
end)

RegisterNUICallback('GoBack', function(data, cb)
	if WeaponTint == nil then
		SetWeaponObjectTintIndex(WEAPON.OBJ, 0)
	else
		SetWeaponObjectTintIndex(WEAPON.OBJ, tonumber(WeaponTint))
	end
	if WeaponCTint == nil then
		RemoveWeaponComponentFromWeaponObject(WEAPON.OBJ, LastWeaponCTint)
	else
		InitiateTints(WEAPON.OBJ, WeaponCTint)
	end
end)

RegisterNUICallback('ChangeTintorSkin', function(data, cb)
	if data.type == "skin" then
		LastWeaponCTint = data.skin
		InitiateTints(WEAPON.OBJ, LastWeaponCTint)
	else
		SetWeaponObjectTintIndex(WEAPON.OBJ, tonumber(data.tint))
	end
end)

RegisterNUICallback('AddBasket', function(data, cb)
	for i=1, #WeaponAttachment do
		if data.attachmentData.component == WeaponAttachment[i] then
			return --TriggerEvent('Notification:SendNotification', ('alreadyhavecomponent'), ("title_notification"), "error", 5000)
		end
	end
	WeaponDatas = GetWeaponData(tostring(data.weapond.label))
	if total == 0 then
		total = total + data.attachmentData.price + WeaponDatas.price
	else
		total = total + data.attachmentData.price 
	end
	SendNUIMessage({message = "AddBasket", totalCost = total, weaponData = { weapon = data.weapon, attachment = data.attachment, SelectedAttachment = data.SelectedAttachment, attachmentData = data.attachmentData}})
end)

RegisterNUICallback('RemoveBasket', function(data, cb)
	total = total - data.attachmentData.price
	SendNUIMessage({message = "RemoveBasket", componenthash = data.componenthash, attachment = data.attachment, totalCost = total})	
	RemoveWeaponComponentFromWeaponObject(WEAPON.OBJ, data.componenthash)
	for k,v in pairs(WeaponAttachment) do
		if data.componenthash == v then
			table.remove(WeaponAttachment, k)
			--TriggerEvent('Notification:SendNotification', ('remove'), ("title_notification"), "error", 5000)
		end
	end
end)

RegisterNUICallback('CategoryChanged', function(data, cb)
	DeleteWeapon(WEAPON.OBJ)
	total = 0
	SkinPrice = 0
	WeaponTint = nil
	WeaponCTint = nil
	WeaponDatas = {}
	WeaponAttachment = {}
	WEAPON.OBJ = nil
	SendNUIMessage({message = "OnWeaponChange"})
	if next(WeaponAttachment) ~= nil then
		for i = 1, #WeaponAttachment do
			SendNUIMessage({message = "RemoveBasket", componenthash = WeaponAttachment[i], attachment = WeaponAttachment[i], totalCost = WeaponDatas.price})	
			table.remove(WeaponAttachment, i)
		end
	end
end)

RegisterNUICallback('OnWeaponChange', function(data, cb)
	WeaponDatas = GetWeaponData(tostring(data.weapond.label))
	damage = GetWeaponDamage(GetHashKey(string.upper(data.weapond.hash)), 0)
	SendNUIMessage({message = "SetDamage", damage = damage})
	total = WeaponDatas.price
	SendNUIMessage({message = "OnWeaponChange"})
	SendNUIMessage({message = "UpdateTotalCost", totalCost = WeaponDatas.price})
	WeaponCTint = nil
	WeaponTint = nil
	if next(WeaponAttachment) ~= nil then
		for i = 1, #WeaponAttachment do
			SendNUIMessage({message = "RemoveBasket", componenthash = WeaponAttachment[i], attachment = WeaponAttachment[i], totalCost = WeaponDatas.price})	
			table.remove(WeaponAttachment, i)
		end
	end
end)

RegisterNUICallback('MouseOutAttachment', function(data, cb)
	RemoveWeaponComponentFromWeaponObject(WEAPON.OBJ, data.attachment)
end)

RegisterNUICallback('MouseOnAttachment', function(data, cb)
	InitiateComponents(WEAPON.OBJ, data.attachment)
end)

RegisterNUICallback('ChangeWeaponObjects', function(data, cb)
	WeaponDatas = GetWeaponData(tostring(data.weapon.label))
	InitiateWeapon(CurrentActionData.location, string.upper(WeaponDatas.hash))
	total = WeaponDatas.price
	damage = GetWeaponDamage(GetHashKey(string.upper(data.weapon.hash)), 0)
	SendNUIMessage({message = "SetDamage", damage = damage})
end)

RegisterNUICallback('ChangeWeaponAttachment', function(data, cb)
	for i=1, #WeaponAttachment do if data.attachment == WeaponAttachment[i] then return end end
	table.insert(WeaponAttachment, data.attachment)
	InitiateComponents(WEAPON.OBJ, data.attachment)
	--TriggerEvent('Notification:SendNotification', _U('equip'), _U("title_notification"), "success", 5000)
end)

RegisterNUICallback('BuyWeapon', function(data, cb)
	ESX.TriggerServerCallback("codem-weaponshop:buyWeapon", function(buy)
		if buy then
			TriggerEvent('Notification:SendNotification', _U('You bought Weapon $%s', total), _U("Weapon Shop"), "success", 5000)
			if next(WeaponAttachment) ~= nil then
				for i = 1, #WeaponAttachment do
					GiveWeaponComponentToPed(PlayerPedId(), data.weapon, WeaponAttachment[i])
					TriggerServerEvent("codem-weaponshop:AddComponents", data.weapon ,WeaponAttachment[i], nil)
				end
			end
			if WeaponCTint ~= nil then
				GiveWeaponComponentToPed(PlayerPedId(), data.weapon, WeaponCTint)
				TriggerServerEvent("codem-weaponshop:AddComponents", data.weapon, WeaponCTint, nil)
			end
			if WeaponTint ~= nil then
				SetPedWeaponTintIndex(PlayerPedId(), GetHashKey(string.upper(data.weapon)), tonumber(WeaponTint))	
				TriggerServerEvent("codem-weaponshop:AddComponents", data.weapon, nil, tonumber(WeaponTint))
			end
		end
	end, data.weapon, WeaponAttachment, total)
end)

--functions
OpenShopMenu = function(location)
	total = 0
	SkinPrice = 0
	WeaponTint = nil
	WeaponCTint = nil
	WeaponDatas = {}
	WeaponAttachment = {}
	WEAPON.OBJ = nil
	ShopOpen = true
	SetNuiFocus(ShopOpen, ShopOpen)
	InitiateCamera(location)
	SendNUIMessage({message = 'Open', Weapons = Config.WeaponTypes, WeaponAttachmentsData = WeaponAttachments, WeaponTints = Config.WeaponTints, PlayerMoney = ESX.PlayerData.money})
end

InitiateComponents = function(WEAPON, attachment)
	local componentModel = GetWeaponComponentTypeModel(attachment)
	RequestModel(componentModel)
	while not HasModelLoaded(componentModel) do
		Citizen.Wait(1)
	end
	GiveWeaponComponentToWeaponObject(WEAPON, GetHashKey(attachment))
	SetModelAsNoLongerNeeded(componentModel)
end

InitiateTints = function(WEAPON, attachment)
	local componentModel = GetWeaponComponentTypeModel(attachment)
	RequestModel(componentModel)
	while not HasModelLoaded(componentModel) do
		Citizen.Wait(1)
	end
	GiveWeaponComponentToWeaponObject(WEAPON, GetHashKey(attachment))
	SetModelAsNoLongerNeeded(componentModel)
end

InitiateWeapon = function(weaponLocation, weaponData)
	local weaponModel = GetHashKey(weaponData)
    local lastRotation = vector3(0.0, 0.0, weaponLocation.w-180.0)
	local offset = tonumber(math.ceil(360.0-weaponLocation.w)/100.0)
	local weaponLoc
	if (tonumber(weaponLocation.w) == 0.0) or (tonumber(weaponLocation.w) == 360.0) then
		weaponLoc = vector3(weaponLocation.x, weaponLocation.y+1.8, weaponLocation.z+1.08)
	else
		weaponLoc = vector3(weaponLocation.x+offset+0.15, weaponLocation.y+1.8, weaponLocation.z+1.08)
	end
	if DoesEntityExist(WEAPON.OBJ) then
		DeleteEntity(WEAPON.OBJ)
		Wait(10)
	end
    RequestWeaponAsset(weaponModel, 31, 0)
    while not HasWeaponAssetLoaded(weaponModel) do
        Citizen.Wait(0)
    end
    local weaponObject = CreateWeaponObject(weaponModel, 120, weaponLoc, true, 1.0, 0)
	SetEntityCoordsWithoutPlantsReset(weaponObject, weaponLoc, false, false,false,true)
	FreezeEntityPosition(weaponObject, true)
	WEAPON.OBJ = weaponObject
    SetEntityRotation(weaponObject, lastRotation)
end

InitiateCamera = function(storeData)
    SetEntityCoords(PlayerPedId(), vector3(storeData.x, storeData.y, storeData.z) - vector3(0.0, 0.0, 0.985))
    SetEntityHeading(PlayerPedId(), storeData.w)
	DoScreenFadeOut(5)
    weaponCamera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
    SetCamCoord(weaponCamera, storeData.x, storeData.y+0.8, storeData.z+1.0)
    SetCamRot(weaponCamera, 0.0, 0.0, storeData.w)
    RenderScriptCams(true, true, 10)
	DoScreenFadeIn(5)
end

DeleteCamera = function()
    RenderScriptCams(false, true, 10)
    while IsCamRendering(weaponCamera) do
        Citizen.Wait(0)
    end
    DestroyCam(weaponCamera)
end

DeleteWeapon = function(entity)
    if DoesEntityExist(entity) then
        DeleteEntity(entity)
    end
end

GetWeaponData = function(data)
    for k,v in pairs(Config.WeaponTypes) do
		if v[data] ~= nil then
			return v[data]
		end
	end
end

GetWeaponAttachmentData = function()
    for k,v in pairs(Config.WeaponTypes) do
        for i,j in pairs(v) do
            if j.attachments then
                for m,n in pairs(j.attachments) do     
                    if string.match(m, 'magazine') or string.match(m, 'clip') or string.match(m, 'drummag') then
                        if WeaponAttachments[j.hash] == nil then
                            WeaponAttachments[j.hash] = {}
                        end
                        if WeaponAttachments[j.hash]["magazine"] == nil then
                            WeaponAttachments[j.hash]["magazine"] = {}
                        end
                        if WeaponAttachments[j.hash]["magazine"][m] == nil then
                            WeaponAttachments[j.hash]["magazine"][m] = n
                        end
                    elseif string.match(m, 'grip') then
                        if WeaponAttachments[j.hash] == nil then
                            WeaponAttachments[j.hash] = {}
                        end
                        if WeaponAttachments[j.hash]["grip"] == nil then
                            WeaponAttachments[j.hash]["grip"] = {}
                        end
                        if WeaponAttachments[j.hash]["grip"][m] == nil then
                            WeaponAttachments[j.hash]["grip"][m] = n
                        end
                    elseif string.match(m, 'scope') then
                        if WeaponAttachments[j.hash] == nil then
                            WeaponAttachments[j.hash] = {}
                        end
                        if WeaponAttachments[j.hash]["scope"] == nil then
                            WeaponAttachments[j.hash]["scope"] = {}
                        end
                        if WeaponAttachments[j.hash]["scope"][m] == nil then
                            WeaponAttachments[j.hash]["scope"][m] = n
                        end
                    elseif string.match(m, 'suppressor') or string.match(m, 'muzzle') then
                        if WeaponAttachments[j.hash] == nil then
                            WeaponAttachments[j.hash] = {}
                        end
                        if WeaponAttachments[j.hash]["muzzle"] == nil then
                            WeaponAttachments[j.hash]["muzzle"] = {}
                        end
                        if WeaponAttachments[j.hash]["muzzle"][m] == nil then
                            WeaponAttachments[j.hash]["muzzle"][m] = n
                        end
                    elseif string.match(m, 'barrel') then
                        if WeaponAttachments[j.hash] == nil then
                            WeaponAttachments[j.hash] = {}
                        end
                        if WeaponAttachments[j.hash]["barrel"] == nil then
                            WeaponAttachments[j.hash]["barrel"] = {}
                        end
                        if WeaponAttachments[j.hash]["barrel"][m] == nil then
                            WeaponAttachments[j.hash]["barrel"][m] = n
                        end
                    elseif string.match(m, 'flashlight')  then
                        if WeaponAttachments[j.hash] == nil then
                            WeaponAttachments[j.hash] = {}
                        end
                        if WeaponAttachments[j.hash]["extra"] == nil then
                            WeaponAttachments[j.hash]["extra"] = {}
                        end
                        if WeaponAttachments[j.hash]["extra"][m] == nil then
                            WeaponAttachments[j.hash]["extra"][m] = n
                        end
                    end
                end
            end
        end
    end
    return WeaponAttachments
end