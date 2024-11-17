let resource_name = 'Codem-mWeaponShop'
WeaponTable = {}
SelectedType = ""
var SelectedTint = ""
var SelectedSkin = ""
var swiper = false
oldPressedObject = ""
WeaponAttachmentsData = []
BlockedWeaponAttachments = []
WeaponTints = []
ESX = []
curWeapon = ""
lastatt = ""
SelectedAttachment = ""
SelectedAttachmentTypei = ""
SelectedWeaponAttachment = ""
AttachmentisSelected = false
damage = 0
OrderCart = []
lastWeaponPressedObject = ""
var clickedData = [
    isClicked = false,
    data = {}
]
var mousenter = false
var BodyClick = false
var mk2 = false
let weaponda;
WeaponTypes = [
    "Pistols",
    "SMG's",
    "Shotguns",
    "Assault Rifles",
    "LMG's",
    "Sniper Rifles",
    "Heavy Weapons",
    "Throwable",
    "Melee",
    "Other"
]

WeaponAttachmentsTable = [
    ["muzzle"],
    ["magazine"],
    ["grip"],
    ["scope"],
    ["extra"],
    ["barrel"]
]
window.addEventListener('message', function(event) {
    if (event.data.message == "test") {
        $(".statusset").css({'display':'block'}).animate({
            width: 80+"%",
        }, 500);
    } else if (event.data.message == "Open") {
        $(".container").fadeIn(300)
        SetSwiper()
        $(".weapon-types-container").html('')
        WeaponTable = event.data.Weapons
        WeaponAttachmentsData = event.data.WeaponAttachmentsData
        WeaponTints = event.data.WeaponTints
        swiper = false
        $(".player-cashamount").html(event.data.PlayerMoney + " $")
        for(i = 0; i < (WeaponTypes.length); i++) {    
            $(".weapon-types-container").append('<div class="weapon-type-i" id="'+WeaponTypes[i]+'">'+WeaponTypes[i].toUpperCase()+'</div>')
        }
        $(".weapon-information").fadeIn(300)
    } else if (event.data.message == "AddBasket") {
        ESX.AddItemToBasket(event.data.weaponData)
        ESX.UpdateTotalCost(event.data.totalCost)
    } else if (event.data.message == "RemoveBasket") {
        ESX.RemoveItemToBasket(event.data.componenthash, event.data.attachment)
        ESX.UpdateTotalCost(event.data.totalCost)
    } else if (event.data.message == "OnWeaponChange") {
        ESX.OnWeaponChange()
    } else if (event.data.message == "SetDamage") {
		damage = event.data.damage
		ESX.UpdateDamage(damage)
    } else if (event.data.message == "UpdateTotalCost") {
        ESX.UpdateTotalCost(event.data.totalCost)
    } else if (event.data.message == "Close") {
        ESX.Close()
    }
});


$(document).on("click", ".weapon-type-i", function (e) { 
    var type = $(this).attr('id')
    SelectedType = type
    var PressedObject = $(".weapon-types-container").find('[id="'+type+'"]');
    PressedObject.removeClass("weapon-type-i-checked")
	$.post(`https://${resource_name}/CategoryChanged`, JSON.stringify({}));
    if (type) {
        if (swiper) {
            swiper = false
            $(".weaponscontainer").animate({
                bottom:"-20vh",
            }, 600, function()
            {   
                lastWeaponPressedObject = ""
                $(".swiper-slide-selection-alert").removeClass("selected")                
                $("#test2").html("")
                oldPressedObject.removeClass("weapon-type-i-checked")
                oldPressedObject = ""

                $(".weapon-main-desc-container").css({'display':'block'}).animate({
                    left: "-50rem",
                }, 500, function(){
                    $(".weapon-main-desc-container").css({'display':'none'});
                });

                $(".part-container-main").fadeOut(300)
            }); 
        } else {
            count = 0
            swiper = true
            $.each(WeaponTable[type], function (i, result) {
                $("#test2").prepend('<div class="swiper-slide" weapon='+result.hash+' label ='+i+'><div class="swiper-slide-box"><img src="./images/'+result.hash+'.png"></div><p class="swiper-slide-weapon-name">'+i.toUpperCase()+'</p><div class="swiper-slide-line"></div><div class="swiper-slide-selection-alert" id='+result.hash+'></div></div>')
                count = count + 1
            })
            $(".weaponscontainer").animate({
                bottom:"6vh",
            }, 600, function(){
                oldPressedObject = $(".weapon-types-container").find('[id="'+type+'"]');
                PressedObject.addClass("weapon-type-i-checked")
                SetSwiper()
            });
        }
    }
})

$(document).on("click", ".swiper-slide", function (e) { 
    var weapon = $(this).attr('weapon')
    $.each(WeaponTable[SelectedType], function (i, result) {
        if (result.hash == weapon) {
            $.post(`https://${resource_name}/ChangeWeaponObjects`, JSON.stringify({weapon : result}));
            var damageobject = $(".weapon-status").find('[id="damage"]');
            if (damage > 100) {
                damage = 100
            }
            damageobject.css({'display':'block'}).animate({
                width: damage+"%",
            }, 500);
            $(".weapon-status-index").find('[id="damage-value"]').html(damage + "/ 100")

            var rateoffire = $(".weapon-status").find('[id="rateoffire"]');
            rateoffire.css({'display':'block'}).animate({
                width: result.rateoffire+"%",
            }, 500);
            $(".weapon-status-index").find('[id="rateoffire-value"]').html(result.rateoffire + "/ 100")
            var accuracy = $(".weapon-status").find('[id="accuracy"]');
            accuracy.css({'display':'block'}).animate({
                width: result.accuracy+"%",
            }, 500);
            $(".weapon-status-index").find('[id="accuracy-value"]').html(result.accuracy + "/ 100")
            var range = $(".weapon-status").find('[id="range"]');
            range.css({'display':'block'}).animate({
                width: result.range+"%",
            }, 500);
            $(".weapon-status-index").find('[id="range-value"]').html(result.range + "/ 100")
            var maxammo = $(".weapon-status").find('[id="maxammo"]');
            maxammo.css({'display':'block'}).animate({
                width:  "100%",
            }, 500);
            $(".weapon-status-index").find('[id="maxammo-value"]').html("250")
            $(".weapon-type").html(SelectedType.toUpperCase())
            $(".weapon-name").html(result.label.toUpperCase())
            $(".weapon-name-main").html(result.label.toUpperCase())
            $(".weapon-cost").html(result.price+" $")
            if (curWeapon !== "") {
                if (curWeapon == weapon) {
                    //
                } else {
                    $.post(`https://${resource_name}/OnWeaponChange`, JSON.stringify({weapond : result}));
                }
            }
            curWeapon = weapon
            if (curWeapon.match("mk2")) {
                mk2 = true
            }
        }
    })

    $(".weapon-main-desc-container").css({'display':'block'}).animate({
        left: 0,
    }, 500);
    $(".part-container-main").fadeIn(300)
    if (lastWeaponPressedObject == weapon) {
        return
    } else {
        if (lastWeaponPressedObject != "") {
            $("#test2").find("[weapon="+lastWeaponPressedObject+"]").find('.swiper-slide-line').css("background" , "linear-gradient(180deg, #393939 0%, #252525 100%)")
            $("#test2").find("[id="+lastWeaponPressedObject+"]").html("")
            
        }
        
        $("#test2").find("[id="+weapon+"]").html('<div class="selected"><p>SELECTED</p></div>')
        $("#test2").find("[weapon="+weapon+"]").find('.swiper-slide-line').css("background" , "rgba(255, 255, 255, 0.603)")
        lastWeaponPressedObject = weapon
        
    }
    // if (lastWeaponPressedObject != "") {
    //     console.log("deleted")
    //     $("#test2").find("[id="+lastWeaponPressedObject+"]").html("")
    //     lastWeaponPressedObject = ""
    // } else {
    //     $("#test2").find("[id="+weapon+"]").html('<div class="selected"><p>SELECTED</p></div>')
    //     lastWeaponPressedObject = weapon
    // }

})

$(document).on("click", ".customize-weapon-button", function (e) { 
    var weapon = $(this).attr('weapon')
    OpenCustomizeMenu()
})

$(document).on("click", ".customize-back-weaponshop-button", function (e) { 
	$.post(`https://${resource_name}/GoBack`, JSON.stringify({}));
    $(".customize-weapon-button").animate({
        width:"100%",
    }, 400, function()
    {   
        $(".customize-weapon-button").html('<div class="customize-weapon-button-icon"></div> CUSTOMIZE ' )
        $(".customize-back-weaponshop-button").fadeOut(400)
        $(".part-container").animate({
            height:"25vh",
        }, 400, function(){
            $(".weapon-buttons").animate({
                "top":"48vh",
            }, 400, function(){
                $(".weapon-contents-container").fadeIn(400)
                $(".weapon-information").fadeIn(400)
                $(".weapon-status").css({'display':'block'}).animate({
                    "margin-top": "43.7vh",
                }, 400);
            }); 
            $(".weapon-customize-rectangles-index-container-main").fadeOut(400)
            $(".weapon-tints-container").fadeOut(300)
            $(".weapon-skins-and-tints-index-container").fadeOut()
            $(".mySwiper2").fadeIn(300)
            //$("#test").html("")
            //$("#test").html('<div class="swiper-slide" id="secswiper" value="skin" ><div class="weapon-tints-tint-index">Weapon Skins</div><div class="bottom-line"></div></div><div class="swiper-slide" id="tt" value="tints" style="background: url(images/weapon_tints.png); background-repeat: no-repeat; background-size: cover;"><div class="weapon-tints-tint-index">Tints</div><div class="bottom-line"></div></div>')
            $(".weapon-tints-gobackbutton").fadeOut(300)
            mk2 = false
            SetSwiper();
        }); 
    }); 

})





OpenCustomizeMenu = function() {
    
    $(".weapon-contents-container").fadeOut(600)
    $(".weapon-information").fadeOut(600)
    $(".weapon-status").css({'display':'block'}).animate({
        "margin-top": "65vh",
    }, 400);
    if (curWeapon) {
        if (WeaponAttachmentsData[curWeapon])  {
            for(i = 0; i < (WeaponAttachmentsTable.length); i++) {
                if (WeaponAttachmentsData[curWeapon][WeaponAttachmentsTable[i]] == undefined ) {
                    BlockedWeaponAttachments[WeaponAttachmentsTable[i]] = true
                    $(".weapon-customize-rectangles-index-container-main").find("[id="+WeaponAttachmentsTable[i]+"]").find("i").css("color", "gray")
                } else { 
                    BlockedWeaponAttachments[WeaponAttachmentsTable[i]] = false
                    $(".weapon-customize-rectangles-index-container-main").find("[id="+WeaponAttachmentsTable[i]+"]").find("i").css("color", "#FFF")
                } 
            };
        
        } else {
            for(i = 0; i < (WeaponAttachmentsTable.length); i++) {
                $(".weapon-customize-rectangles-index-container-main").find("[id="+WeaponAttachmentsTable[i]+"]").find("i").css("color", "gray")
                BlockedWeaponAttachments[WeaponAttachmentsTable[i]] = true
			
            };
            
            
        }
    }
    $(".customize-weapon-button").animate({
        width:"20vh",
    }, 400, function()
    {   
        $(".customize-weapon-button").html("WEAPONSHOP")
        $(".customize-back-weaponshop-button").fadeIn(600)
        $(".part-container").animate({
            height:"53vh",
        }, 400, function(){}); 
    }); 
    $(".weapon-buttons").animate({
        "top":"70vh",
    }, 400, function(){}); 
    $(".weapon-customize-rectangles-index-container-main").fadeIn(600)
    $(".weapon-tints-container").fadeIn(300)
}

$(document).on("click", ".weapon-customize-rectangles-index", function (e) { 
    $(".weapon-attachments-type").html("")
    SelectedAttachmentType = $(this).attr('id')
    SelectedAttachmentTypei = SelectedAttachmentType
    if (BlockedWeaponAttachments[SelectedAttachmentType] == true) {
        //console.log("This weapon does'nt support this attachment " + SelectedAttachmentType)
        ESX.SendNuiMessage("attachmentincompatible")
        return
    }
    if (WeaponAttachmentsData[curWeapon]){
        if (WeaponAttachmentsData[curWeapon][SelectedAttachmentType]) {   
            $.each(WeaponAttachmentsData[curWeapon][SelectedAttachmentType], function (i, result) {
                $(".weapon-attachments-type").prepend('<div class="weapon-attachments-index" id='+i+' ><img src="images/'+i+'.png"></div>')
                ChangeBlur(true)
            })
            $(".weapon-attachments-type-container").fadeIn(300)
        } else {
            console.log("Weapon can not found " + curWeapon)
        }
    } else {
        console.log("Weapon can not found " + curWeapon)
    }

})



$(document).on("mouseenter", ".weapon-attachments-index", function(e){
    SelectedAttachment = $(this).attr('id')
    $(".weapon-attachment-selected").html('<img src="images/'+SelectedAttachment+'.png"></img>')
    const str = SelectedAttachmentTypei;
    const firstChar = str.charAt(0);
    const capitalized = str.replace(firstChar, firstChar.toUpperCase());
    $("#attachment-name").html(capitalized)
    $("#attachment-index").html(WeaponAttachmentsData[curWeapon][SelectedAttachmentTypei][SelectedAttachment]["label"])
    $("#attachment-price").html(WeaponAttachmentsData[curWeapon][SelectedAttachmentTypei][SelectedAttachment]["price"] + " $")
	lastatt = WeaponAttachmentsData[curWeapon][SelectedAttachmentTypei][SelectedAttachment]["component"]
	$.post(`https://${resource_name}/MouseOnAttachment`, JSON.stringify({attachment:lastatt}));
})  

$(document).on("click", ".weapon-attachments-index", function (e) { 
    SelectedAttachment = $(this).attr('id')
    if (SelectedWeaponAttachment) {
        SelectedWeaponAttachment = ""
        $(".weapon-attachment-selected").html('<i class="fas fa-plus"></i>')
        $("#attachment-name").html("-")
        $("#attachment-index").html("-")
        $("#attachment-price").html("-")
    }
	
    $(".weapon-attachment-selected").html('<img src="images/'+SelectedAttachment+'.png"></img>')
    const str = SelectedAttachmentTypei;
    const firstChar = str.charAt(0);
    const capitalized = str.replace(firstChar, firstChar.toUpperCase());
    $("#attachment-name").html(capitalized)
    $("#attachment-index").html(WeaponAttachmentsData[curWeapon][SelectedAttachmentTypei][SelectedAttachment]["label"])
    $("#attachment-price").html(WeaponAttachmentsData[curWeapon][SelectedAttachmentTypei][SelectedAttachment]["price"] + " $")
    SelectedWeaponAttachment = SelectedAttachment
    
})

$(document).on("click", ".weapon-attachment-selected", function (e) { 
    if (SelectedWeaponAttachment == "") {
        ChangeBlur(false)
        return $(".weapon-attachments-type-container").fadeOut(300) 
    }
	
	$.each(WeaponTable[SelectedType], function (i, result) {
		if (result.hash == curWeapon) {
			weaponda = result
		}
	})
    $(".weapon-customize-rectangles-index-container-main").find("[id="+SelectedAttachmentTypei+"]").find(".weapon-customize-rectangles-index-attach-name-index").html(WeaponAttachmentsData[curWeapon][SelectedAttachmentTypei][SelectedAttachment]["label"])
    $(".weapon-customize-rectangles-index-container-main").find("[id="+SelectedAttachmentTypei+"]").find("i").fadeOut(300)
    $(".weapon-customize-rectangles-index-container-main").find("[id="+SelectedAttachmentTypei+"]").find(".weapon-customize-rectangles-index").html("<img src='images/"+SelectedAttachment+".png'>")
    $(".weapon-customize-rectangles-index-container-main").find("[id="+SelectedAttachmentTypei+"]").find(".weapon-customize-rectangles-index").find("img").fadeIn(300)
    $.post(`https://${resource_name}/AddBasket`, JSON.stringify({weapond: weaponda, weapon: curWeapon, attachment : SelectedAttachmentTypei, SelectedAttachment : SelectedAttachment,attachmentData : WeaponAttachmentsData[curWeapon][SelectedAttachmentTypei][SelectedAttachment]}));
    $.post(`https://${resource_name}/ChangeWeaponAttachment`, JSON.stringify({weapon : curWeapon, attachment : WeaponAttachmentsData[curWeapon][SelectedAttachmentTypei][SelectedAttachment]["component"]}));
    SelectedWeaponAttachment = ""
    $(".weapon-attachment-selected").html('<i class="fas fa-plus"></i>')
    $("#attachment-name").html("-")
    $("#attachment-index").html("-")
    $("#attachment-price").html("-")
    $(".weapon-attachments-type-container").fadeOut(300)
    ChangeBlur(false)
	
})

$("body").delegate('.weapon-attachments-index', 'mouseleave', function(){
    if (SelectedWeaponAttachment == "") {
        $(".weapon-attachment-selected").html('<i class="fas fa-plus"></i>')
        $("#attachment-name").html("-")
        $("#attachment-index").html("-")
        $("#attachment-price").html("-")
		$.post(`https://${resource_name}/MouseOutAttachment`, JSON.stringify({attachment:lastatt}));
    }
});

$(document).on("click", "#secswiper", function (e) { 
    var value = $(this).attr("value")
    if (value) {
        if(value == "skin") {
            $.each(WeaponTable[SelectedType], function (i, result) {
                if (result.hash == curWeapon) {
                    if (result.tints) {
                        $(".weapon-skins-and-tints-index-container").html("")
                        $(".mySwiper2").fadeOut(100)
                        $.each(result.tints, function (i, result) {
                            $(".weapon-skins-and-tints-index-container").append('<div class="weapon-skins-and-tints-index" type="skin" id='+i+' price='+result.price+'><p class="weapon-skins-and-tints-index-label">'+result.label.toUpperCase()+'</p><p class="weapon-skins-and-tints-index-price">'+result.price+'$</p></div>')
                            $(".weapon-skins-and-tints-index-container").fadeIn(150)
                            
                        }) 
                        $(".weapon-tints-gobackbutton").fadeIn(300)
                    }
                }
            })
        } else if (value == "tints") {
            var TintType = ESX.CheckWeaponTints();
            $(".weapon-skins-and-tints-index-container").html("")
            $(".mySwiper2").fadeOut(100)
            $.each(TintType, function (i, result) {
                $(".weapon-skins-and-tints-index-container").append('<div class="weapon-skins-and-tints-index" type="tint" id='+i+' price='+result.price+'><p class="weapon-skins-and-tints-index-label">'+result.label.toUpperCase()+'</p><p class="weapon-skins-and-tints-index-price">'+result.price+'$</p></div>')
            }) 
            $(".weapon-skins-and-tints-index-container").fadeIn(150)
            $(".weapon-tints-gobackbutton").fadeIn(300)
            
        }
    }
})



$(document).on("click", ".weapon-skins-and-tints-index", function (e) {
    $(".weapon-skins-and-tints-index-container").fadeOut(300)
    $(".mySwiper2").fadeIn(100)
    $(".weapon-tints-gobackbutton").fadeOut(300)
    $.post(`https://${resource_name}/AddTintorSkin`, JSON.stringify({type : $(this).attr("type"), mk2 : mk2, id : $(this).attr("id"), price : $(this).attr("price"), weapon : curWeapon  }));
})



$(document).on("mouseenter", ".weapon-skins-and-tints-index", function(e){
    var indexType = $(this).attr("type")
    if (indexType == "skin") {
        $.post(`https://${resource_name}/ChangeTintorSkin`, JSON.stringify({type : $(this).attr("type"), skin : $(this).attr("id"), price : $(this).attr("price"), weapon : curWeapon, index : "check"}));
    } else {
        $.post(`https://${resource_name}/ChangeTintorSkin`, JSON.stringify({type : $(this).attr("type"), tint : $(this).attr("id"), price : $(this).attr("price"), weapon : curWeapon, index : "check"}));
    }
})


$(document).on("click", ".weapon-tints-gobackbutton", function (e) { 
    $(".weapon-skins-and-tints-index-container").fadeOut(300)
    $(".mySwiper2").fadeIn(100)
    $(".weapon-tints-gobackbutton").fadeOut(300)
	$.post(`https://${resource_name}/GoBack`, JSON.stringify({}));
    if (SelectedSkin != "") {
        $.each(WeaponTable[SelectedType], function (i, result) {
            if (result.hash == curWeapon) {
                $("#test").find("[value='skin']").find(".weapon-tints-tint-index").html(result.tints[(SelectedSkin)].label) 
            }
        })
    }
    if (SelectedTint != "") {
        if (mk2) {
            $("#test").find("[value='tints']").find(".weapon-tints-tint-index").html(WeaponTints["MK2"][Number(SelectedTint)].label)
        } else {
            $("#test").find("[value='tints']").find(".weapon-tints-tint-index").html(WeaponTints["Normal"][Number(SelectedTint)].label)
        }
    }
})



ChangeBlur = function(type) {
    if (type == true) {
        $(".container").css("filter" , "blur(0.19rem)")
        $(".container").css("pointer-events", "none" )
    } else {
        $(".container").css("filter" , "blur(0)")
        $(".container").css("pointer-events", "initial" )
    }
}


SetSwiper = function() {
    var swiper = new Swiper(".mySwiper", {
        slidesPerView: 4,
        spaceBetween: 30,
        slidesPerGroup: 4,
        loop: true,
        loopFillGroupWithBlank: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: false
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev"
        }
      });


}

ESX.SendNuiMessage = function(message) {
    $.post(`https://${resource_name}/SendMessage`, JSON.stringify({message : message}));
}

ESX.AddItemToBasket = function(itemData) {
    const str = itemData.attachment;
    const firstChar = str.charAt(0);
    const capitalized = str.replace(firstChar, firstChar.toUpperCase());
    $(".parts-index-selected-container").append('<div class="parts-index-selected" id='+itemData.attachmentData.component+'><div class="weapon-attachment-remove-image"  attachment= '+SelectedAttachment+' attachmenttype='+SelectedAttachmentTypei+' componenthash='+itemData.attachmentData.component+'><i class="fas fa-minus"></i></div><div class="texts"><div class="weapon-attachment-text-side-attach"><p class="attachmentname">'+capitalized+'</p><p class="attachmentnameindex">'+itemData.attachmentData.label+'</p></div><div class="weapon-attachment-text-side-price"><p class="price">Price</p><p class="pricevalue">'+itemData.attachmentData.price+' $</p></div></div></div>')
    //$(".weapon-customize-rectangles-index-container-main").fadeOut(300)
    $(".parts-list-empty-message").fadeOut(100)  
}

ESX.RemoveItemToBasket = function(componenthash, attachment) {
    $(".parts-index-selected-container").find("[id="+componenthash+"]").fadeOut(250)
    $(".parts-index-selected-container").find("[id="+componenthash+"]").remove();
    $(".weapon-customize-rectangles-index-container-main").find("[id="+attachment+"]").find(".img").fadeOut(300)
    $(".weapon-customize-rectangles-index-container-main").find("[id="+attachment+"]").find(".weapon-customize-rectangles-index-attach-name-index").html("-")
    $(".weapon-customize-rectangles-index-container-main").find("[id="+attachment+"]").find(".weapon-customize-rectangles-index").html('<i class="fas fa-plus"></i>')
    var totalHTMLcount = document.getElementsByClassName("parts-index-selected");
    if (totalHTMLcount.length == 0) {
        $(".parts-list-empty-message").fadeIn(100)
    }
}

ESX.UpdateDamage = function(damages) {
	var damageobject = $(".weapon-status").find('[id="damage"]');
	if (damages > 100) {
		damage = 100
	}
	damageobject.css({'display':'block'}).animate({
		width: damage+"%",
	}, 500);
	$(".weapon-status-index").find('[id="damage-value"]').html(damage + "/ 100")
}

ESX.UpdateTotalCost = function(totalCost) {
    $(".weapon-cost").html(totalCost+" $")
}

$(document).on("click", ".weapon-attachment-remove-image", function (e) { 
    $.post(`https://${resource_name}/RemoveBasket`, JSON.stringify({attachment : $(this).attr("attachmenttype"), componenthash : $(this).attr("componenthash"), weapon: curWeapon,  SelectedAttachment : $(this).attr("attachment"), attachmentData : WeaponAttachmentsData[curWeapon][SelectedAttachmentTypei][SelectedAttachment]}));
})


ESX.OnWeaponChange = function() {
    $(".parts-index-selected-container").html("")
    $(".parts-list-empty-message").fadeIn(100)
	for(i = 0; i < (WeaponAttachmentsTable.length); i++) {    
		$(".weapon-customize-rectangles-index-container-main").find("[id="+WeaponAttachmentsTable[i]+"]").find(".img").fadeOut(300)
		$(".weapon-customize-rectangles-index-container-main").find("[id="+WeaponAttachmentsTable[i]+"]").find(".weapon-customize-rectangles-index-attach-name-index").html("-")
		$(".weapon-customize-rectangles-index-container-main").find("[id="+WeaponAttachmentsTable[i]+"]").find(".weapon-customize-rectangles-index").html('<i class="fas fa-plus"></i>')
	}
}


ESX.CheckWeaponTints = function() {
    if (curWeapon) {
        if (curWeapon.match("mk2")) {
            return WeaponTints["MK2"]
        } else {
            return WeaponTints["Normal"]
        }
    }
}

ESX.Close = function() {
    $(".weaponscontainer").animate({
        bottom:"-20vh",
    }, 600, function()
    {});   
    $(".container").fadeOut(300)
    $.each(WeaponAttachmentsTable, function (i, result) {
        $(".weapon-customize-rectangles-index-container-main").find("[id="+result+"]").find(".img").fadeOut(300)
        $(".weapon-customize-rectangles-index-container-main").find("[id="+result+"]").find(".weapon-customize-rectangles-index-attach-name-index").html("-")
        $(".weapon-customize-rectangles-index-container-main").find("[id="+result+"]").find(".weapon-customize-rectangles-index").html('<i class="fas fa-plus"></i>')
    })
    $(".customize-weapon-button").animate({
        width:"100%",
    }, 400, function()
    {   
        $(".customize-weapon-button").html('<div class="customize-weapon-button-icon"></div> CUSTOMIZE ' )
        $(".customize-back-weaponshop-button").fadeOut(400)
        $(".part-container").animate({
            height:"25vh",
        }, 400, function(){
            $(".weapon-buttons").animate({
                "top":"48vh",
            }, 400, function(){
                $(".weapon-contents-container").fadeIn(200)
                $(".weapon-status").css({'display':'block'}).animate({
                    "margin-top": "43.7vh",
                }, 400);
            }); 
            $(".weapon-customize-rectangles-index-container-main").fadeOut(200)
            $(".weapon-tints-container").fadeOut(200)
        }); 
        $(".weapon-main-desc-container").css({'display':'block'}).animate({
            left: "-50rem",
        }, 500, function(){
            $(".weapon-main-desc-container").css({'display':'none'});
        });
        $(".part-container-main").fadeOut(300)
    }); 
    $(".weapon-tints-gobackbutton").fadeOut(100)
    $(".parts-index-selected-container").html("")
    $("#test2").html("")
    $(".parts-list-empty-message").fadeIn(100)
    $(".weapon-skins-and-tints-index-container").html("")
    $(".weapon-skins-and-tints-index-container").fadeOut()
    $(".mySwiper2").fadeIn(100)
    $(".weapon-attachments-type-container").fadeOut(100)
    ChangeBlur(false)
    SelectedSkin = ""
    SelectedTint = ""
    mk2 = false
	$.post(`https://${resource_name}/Close`, JSON.stringify({}));
}


$(document).on("click", ".weapon-buybutton", function (e) { 
    ESX.Close();
    $.post(`https://${resource_name}/BuyWeapon`, JSON.stringify({weapon : curWeapon}));
})


$(document).on("click", ".weapon-attachments-type-container", function (e) { 
    if (SelectedWeaponAttachment == "") {
        ChangeBlur(false)
        return $(".weapon-attachments-type-container").fadeOut(300)
    }

})

$(document).on('keydown', function() {
    switch(event.keyCode) {
        case 27: // ESC
            ESX.Close();
            $.post(`https://${resource_name}/Close`, JSON.stringify({}));
            break;
        case 113: // ESC
            ESX.Close();
            $.post(`https://${resource_name}/Close`, JSON.stringify({}));
            break;
    }
});
