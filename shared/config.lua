Config = {}
Config.DrawDistance  = 10
Config.Size          = { x = 1.5, y = 1.5, z = 1.0 }
Config.Color         = { r = 0, g = 128, b = 255 }
Config.Type          = 21
Config.Locale        = 'en'
-- Brought to you by 5M EXCLUSIVE-SCRIPTS (discord.gg/fivemscripts)
Config.Blip = {active = true, label = ('Weapon Shop'), sprite = 156, scale = 0.55, colour = 40}

Config.Zones = {

	GunShop = {
		Legal = true,
		Items = {},
		Locations = {
			vector4(-662.1, -935.3, 21.8, 0.0),
			vector4(810.2, -2157.3, 29.6, 0.0),
			vector4(1693.4, 3759.5, 34.7, 0.0),
			vector4(-330.2, 6083.8, 31.4, 0.0),
			vector4(252.3, -50.0, 69.9, 0.0),
			vector4(22.0, -1107.2, 29.8, 0.0),
			vector4(2567.6, 294.3, 108.7, 0.0),
			vector4(-1117.5, 2698.6, 18.5, 0.0),
			vector4(842.4, -1033.4, 28.1, 0.0),
			vector4(-1306.2, -394.0, 36.6, 0.0)
		}
	},
	Club = {
		Legal = false,
		Items = {},
		Locations = {
			vector4(1108.12,208.55,-49.44, 0.0),
		}
	},
	BlackWeashop = {
		Legal = false,
		Items = {},
		Locations = {
			-- vector3(1167.6746, 165.0843, 80.8085, 243.5439),
		}
	},
	
}

Config.Locations = {
    vector4(-662.1, -935.3, 21.8, 0.0),
    vector4(810.2, -2157.3, 29.6, 0.0),
    vector4(1693.4, 3759.5, 34.7, 0.0),
    vector4(-330.2, 6083.8, 31.4, 0.0),
    vector4(252.3, -50.0, 69.9, 0.0),
    vector4(22.0, -1107.2, 29.8, 0.0),
    vector4(2567.6, 294.3, 108.7, 0.0),
    vector4(-1117.5, 2698.6, 18.5, 0.0),
    vector4(842.4, -1033.4, 28.1, 0.0),
    vector4(-1306.2, -394.0, 36.6, 0.0)
}

Config.DefaultAmmo = 120


Config.WeaponTints = {
    ["Normal"] = {
        [0] = {
            label = "Default/Black",
            price = 0,
            value = 0,
        },
        [1] = {
            label = "Green",
            price = 2500,
            value = 1,
        },
        [2] = {
            label = "Gold",
            price = 2500,
            value = 2,
        },
        [3] = {
            label = "Pink",
            price = 2500,
            value = 3,
        },
        [4] = {
            label = "Army",
            price = 2500,
            value = 4,
        },
        [5] = {
            label = "LSPD",
            price = 2500,
            value = 5,
        },
        [6] = {
            label = "Orange",
            price = 2500,
            value = 6,
        },
        [7] = {
            label = "Platinum",
            price = 2500,
            value = 7,
        },
    },
    ["MK2"] = {
        [0] = {
            label = "Classic Black",
            price = 0,
            value = 0,
        },
        [1] = {
            label = "Classic Gray",
            price = 2500,
        },
        [2] = {
            label = "Classic Two-Tone",
            price = 2500,
        },
        [3] = {
            label = "Classic White",
            price = 2500,
        },
        [4] = {
            label = "Classic Beige",
            price = 2500,
        },
        [5] = {
            label = "Classic Green",
            price = 2500,
        },
        [6] = {
            label = "Classic Blue",
            price = 2500,
        },
        [7] = {
            label = "Classic Earth",
            price = 2500,
        },
        [8] = {
            label = "Classic Brown & Black",
            price = 2500,
        },
        [9] = {
            label = "Red Contrast",
            price = 2500,
        },
        [10] = {
            label = "Blue Contrast",
            price = 2500,
        },

        [11] = {
            label = "Yellow Contrast",
            price = 2500,
        },
        [12] = {
            label = "Orange Contrast",
            price = 2500,
        },

        [13] = {
            label = "Bold Pink",
            price = 2500,
        },
        [14] = {
            label = "Bold Purple & Yellow",
            price = 2500,
        },
        [15] = {
            label = "Bold Orange",
            price = 2500,
        },
        [16] = {
            label = "Bold Green & Purple",
            price = 2500,
        },
        [17] = {
            label = "Bold Red Features",
            price = 2500,
        },

        [18] = {
            label = "Bold Green Features",
            price = 2500,
        },
        [19] = {
            label = "Bold Cyan Features",
            price = 2500,
        },
        [20] = {
            label = "Bold Yellow Features",
            price = 2500,
        },
        [21] = {
            label = "Bold Red & White",
            price = 2500,
        },
        [22] = {
            label = "Bold Blue & White",
            price = 2500,
        },
        [23] = {
            label = "Metallic Gold",
            price = 2500,
        },
        [24] = {
            label = "Metallic Platinum",
            price = 2500,
        },

        [25] = {
            label = "Metallic Gray & Lilac",
            price = 2500,
        },
        [26] = {
            label = "Metallic Purple & Lime",
            price = 2500,
        },
        [27] = {
            label = "Metallic Red",
            price = 2500,
        },
        [28] = {
            label = "Metallic Green",
            price = 2500,
        },
        [29] = {
            label = "Metallic Blue",
            price = 2500,
        },
        [30] = {
            label = "Metallic White & Aqua",
            price = 2500,
        },
        [31] = {
            label = "Metallic Red & Yellow",
            price = 2500,
        },
    }
}
Config.WeaponTypes = {
    ["Pistols"] = {
        ["Ap Pistol"] = {
            hash = "weapon_appistol",
            label = "Ap Pistol",
            rateoffire = 80,
            accuracy = 35,
            range = 30,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_APPISTOL_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },  
                ["suppressor"] = {
                    component = "COMPONENT_AT_PI_SUPP_02",
                    label = "Suppressor",
                    price = 1500,
                },   
                ["extendedclip"] = {
                    component = "COMPONENT_APPISTOL_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },  
                ["flashlight"] = {
                    component = "COMPONENT_AT_PI_FLSH",
                    label = "Flashlight",
                    price = 1500,
                }                         
            },
            tints = {
                ["COMPONENT_APPISTOL_VARMOD_LUXE"] = {label = "Yusuf Amir Luxury Finish", price = 2500},
            }
        },
        ["Combat Pistol"] = {
            hash = "weapon_combatpistol",
            label = "Combat Pistol",
            rateoffire = 40,
            accuracy = 50,
            range = 30,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_COMBATPISTOL_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },  
                ["extendedclip"] = {
                    component = "COMPONENT_COMBATPISTOL_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_PI_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["suppressor"] = {
                    component = "COMPONENT_AT_PI_SUPP",
                    label = "Suppressor",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER"] = {label = "Yusuf Amir Luxury Finish", price = 2500},
            }
        },
        ["Double-Action Revolver"] = {
            hash = "weapon_doubleaction",
            label = "Double-Action Revolver",
            rateoffire = 40,
            accuracy = 60,
            range = 35,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Flare Gun"] = {
            hash = "weapon_flaregun",
            label = "Flare Gun",
            rateoffire = 10,
            accuracy = 30,
            range = 10,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Heavy Pistol"] = {
            hash = "weapon_heavypistol",
            label = "Heavy Pistol",
            rateoffire = 40,
            accuracy = 50,
            range = 35,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_HEAVYPISTOL_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_PI_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_HEAVYPISTOL_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },   
                ["suppressor"] = {
                    component = "COMPONENT_AT_PI_SUPP",
                    label = "Suppressor",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_HEAVYPISTOL_VARMOD_LUXE"] = {label = "Etched Wood Grip Finish", price = 2500},                  
            }
        },
        ["Heavy Revolver Mk II"] = {
            hash = "weapon_revolver_mk2",
            label = "Heavy Revolver Mk II",
            rateoffire = 30,
            accuracy = 65,
            range = 30,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["flashlight"] = {
                    component = "COMPONENT_AT_PI_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SIGHTS",
                    label = "Holo Scope",
                    price = 1500,
                },
                ["scope2"] = {
                    component = "COMPONENT_AT_SCOPE_MACRO_MK2",
                    label = "Small Scope",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_REVOLVER_MK2_CAMO_02"] = {label = "Brushstroke Camo", price = 2500},
                ["COMPONENT_REVOLVER_MK2_CAMO_03"] = {label = "Woodland Camo", price = 2500},
                ["COMPONENT_REVOLVER_MK2_CAMO_04"] = {label = "Skull", price = 2500},
                ["COMPONENT_REVOLVER_MK2_CAMO_05"] = {label = "Sessanta Nove", price = 2500},
                ["COMPONENT_REVOLVER_MK2_CAMO_06"] = {label = "Perseus", price = 2500},
                ["COMPONENT_REVOLVER_MK2_CAMO_07"] = {label = "Leopard", price = 2500},
                ["COMPONENT_REVOLVER_MK2_CAMO_08"] = {label = "Zebra", price = 2500},
                ["COMPONENT_REVOLVER_MK2_CAMO_09"] = {label = "Geometric", price = 2500},
                ["COMPONENT_REVOLVER_MK2_CAMO_10"] = {label = "Boom!", price = 2500},
                ["COMPONENT_REVOLVER_MK2_CAMO_IND_01"] = {label = "Patriotic", price = 2500},
            }
        },
        ["Heavy Revolver"] = {
            hash = "weapon_revolver",
            label = "Heavy Revolver",
            rateoffire = 20,
            accuracy = 65,
            range = 35,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            tints = {
                ["COMPONENT_REVOLVER_VARMOD_BOSS"] = {label = "VIP Variant", price = 2500},
                ["COMPONENT_REVOLVER_VARMOD_GOON"] = {label = "Bodyguard Variant", price = 2500},
            }
            
        },
        ["Machine Pistol"] = {
            hash = "weapon_machinepistol",
            label = "Machine Pistol",
            rateoffire = 70,
            accuracy = 40,
            range = 30,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_MACHINEPISTOL_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_MACHINEPISTOL_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["suppressor"] = {
                    component = "COMPONENT_AT_PI_SUPP",
                    label = "Suppressor",
                    price = 1500,
                },
                ["drummag"] = {
                    component = "COMPONENT_MACHINEPISTOL_CLIP_03",
                    label = "Drum Maganize",
                    price = 1500,
                }
            }
        },
        ["Pistol .50"] = {
            hash = "weapon_pistol50",
            label = "Pistol .50",
            rateoffire = 40,
            accuracy = 55,
            range = 35,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_PISTOL50_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["suppressor"] = {
                    component = "COMPONENT_AT_AR_SUPP_02",
                    label = "Suppressor",
                    price = 1500,
                },   
                ["extendedclip"] = {
                    component = "COMPONENT_PISTOL50_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },  
                ["flashlight"] = {
                    component = "COMPONENT_AT_PI_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
            },
            tints = {
                ["COMPONENT_PISTOL50_VARMOD_LUXE"] = {label = "Platinum Pearl Deluxe Finish", price = 2500},           
            }
        },
        ["Pistol Mk II"] = {
            hash = "weapon_pistol_mk2",
            label = "Pistol Mk II",
            rateoffire = 40,
            accuracy = 40,
            range = 25,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_PISTOL_MK2_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_PI_FLSH_02",
                    label = "Flashlight",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_PISTOL_MK2_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },   
                ["suppressor"] = {
                    component = "COMPONENT_AT_PI_SUPP_02",
                    label = "Suppressor",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_PI_RAIL",
                    label = "Mounted Scope",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_PISTOL_MK2_CAMO_02"] = {label = "Brushstroke Camo", price = 2500},
                ["COMPONENT_PISTOL_MK2_CAMO_03"] = {label = "Woodland Camo", price = 2500},
                ["COMPONENT_PISTOL_MK2_CAMO_04"] = {label = "Skull", price = 2500},
                ["COMPONENT_PISTOL_MK2_CAMO_05"] = {label = "Sessanta Nove", price = 2500},
                ["COMPONENT_PISTOL_MK2_CAMO_06"] = {label = "Perseus", price = 2500},
                ["COMPONENT_PISTOL_MK2_CAMO_07"] = {label = "Leopard", price = 2500},
                ["COMPONENT_PISTOL_MK2_CAMO_08"] = {label = "Zebra", price = 2500},
                ["COMPONENT_PISTOL_MK2_CAMO_09"] = {label = "Geometric", price = 2500},
                ["COMPONENT_PISTOL_MK2_CAMO_10"] = {label = "Boom!", price = 2500},
                ["COMPONENT_PISTOL_MK2_CAMO_IND_01"] = {label = "Patriotic", price = 2500},
            }
        },
        ["Pistol"] = {
            hash = "weapon_pistol",
            label = "Pistol",
            rateoffire = 40,
            accuracy = 40,
            range = 25,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_PISTOL_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },  
                ["suppressor"] = {
                    component = "COMPONENT_AT_PI_SUPP_02",
                    label = "Suppressor",
                    price = 1500,
                },   
                ["extendedclip"] = {
                    component = "COMPONENT_PISTOL_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },  
                ["flashlight"] = {
                    component = "COMPONENT_AT_PI_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
            },
            tints = {
                ["COMPONENT_PISTOL_VARMOD_LUXE"] = {label = "Yusuf Amir Luxury Finish", price = 2500},                
            }
        },
        ["SNS Pistol Mk II"] = {
            hash = "weapon_snspistol_mk2",
            label = "SNS Pistol Mk II",
            rateoffire = 40,
            accuracy = 40,
            range = 20,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_SNSPISTOL_MK2_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_PI_FLSH_03",
                    label = "Flashlight",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_SNSPISTOL_MK2_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },   
                ["suppressor"] = {
                    component = "COMPONENT_AT_PI_SUPP_02",
                    label = "Suppressor",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_PI_RAIL_02",
                    label = "Mounted Scope",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_SNSPISTOL_MK2_CAMO_02"] = {label = "Brushstroke Camo", price = 2500},
                ["COMPONENT_SNSPISTOL_MK2_CAMO_03"] = {label = "Woodland Camo", price = 2500},
                ["COMPONENT_SNSPISTOL_MK2_CAMO_04"] = {label = "Skull", price = 2500},
                ["COMPONENT_SNSPISTOL_MK2_CAMO_05"] = {label = "Sessanta Nove", price = 2500},
                ["COMPONENT_SNSPISTOL_MK2_CAMO_06"] = {label = "Perseus", price = 2500},
                ["COMPONENT_SNSPISTOL_MK2_CAMO_07"] = {label = "Leopard", price = 2500},
                ["COMPONENT_SNSPISTOL_MK2_CAMO_08"] = {label = "Zebra", price = 2500},
                ["COMPONENT_SNSPISTOL_MK2_CAMO_09"] = {label = "Geometric", price = 2500},
                ["COMPONENT_SNSPISTOL_MK2_CAMO_10"] = {label = "Boom!", price = 2500},
                ["COMPONENT_SNSPISTOL_MK2_CAMO_IND_01"] = {label = "Patriotic", price = 2500},
            }
        },
        ["SNS Pistol"] = {
            hash = "weapon_snspistol",
            label = "SNS Pistol",
            rateoffire = 40,
            accuracy = 40,
            range = 20,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {    
                ["defaultclip"] = {
                    component = "COMPONENT_SNSPISTOL_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_SNSPISTOL_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_SNSPISTOL_VARMOD_LOWRIDER"] = {label = "Etched Wood Grip Finish", price = 2500},
            }
        },
        ["Up-n-Atomizer"] = {
            hash = "weapon_raypistol",
            label = "Up-n-Atomizer",
            rateoffire = 10,
            accuracy = 30,
            range = 20,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Vintage Pistol"] = {
            hash = "weapon_vintagepistol",
            label = "Vintage Pistol",
            rateoffire = 40,
            accuracy = 40,
            range = 25,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_VINTAGEPISTOL_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_VINTAGEPISTOL_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["suppressor"] = {
                    component = "COMPONENT_AT_PI_SUPP",
                    label = "Suppressor",
                    price = 1500,
                }
            }
        },
    },
    ["SMG's"] = {
        ["Combat MG Mk II"] = {
            hash = "weapon_combatmg_mk2",
            label = "Combat MG Mk II",
            rateoffire = 65,
            accuracy = 45,
            range = 60,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_COMBATMG_MK2_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_COMBATMG_MK2_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SIGHTS",
                    label = "Holo Scope",
                    price = 1500,
                },
                ["scope2"] = {
                    component = "COMPONENT_AT_SCOPE_SMALL_MK2",
                    label = "Medium Scope",
                    price = 1500,
                },
                ["scope3"] = {
                    component = "COMPONENT_AT_SCOPE_MEDIUM_MK2",
                    label = "Large Scope",
                    price = 1500,
                },
                ['grip'] = {
                    component = "COMPONENT_AT_AR_AFGRIP_02",
                    label = "Grip",
                    price = 1500,
                },
                ['suppressor2'] = {
                    component = "COMPONENT_AT_MUZZLE_01",
                    label = "Flat Muzzle Brake",
                    price = 1500,
                },
                ['suppressor3'] = {
                    component = "COMPONENT_AT_MUZZLE_02",
                    label = "Tactical Muzzle Brake",
                    price = 1500,
                },
                ['suppressor4'] = {
                    component = "COMPONENT_AT_MUZZLE_03",
                    label = "Fat-End Muzzle Brake",
                    price = 1500,
                },
                ['suppressor5'] = {
                    component = "COMPONENT_AT_MUZZLE_04",
                    label = "Precision Muzzle Brake",
                    price = 1500,
                },
                ['suppressor6'] = {
                    component = "COMPONENT_AT_MUZZLE_05",
                    label = "Heavy Duty Muzzle Brake",
                    price = 1500,
                },
                ['suppressor7'] = {
                    component = "COMPONENT_AT_MUZZLE_06",
                    label = "Slanted Muzzle Brake",
                    price = 1500,
                },
                ['suppressor8'] = {
                    component = "COMPONENT_AT_MUZZLE_07",
                    label = "Split-End Muzzle Brake",
                    price = 1500,
                },
                ["barrel"] = {
                    component = "COMPONENT_AT_MG_BARREL_01",
                    label = "Default Barrel",
                    price = 1500,
                },
                ["barrel2"] = {
                    component = "COMPONENT_AT_MG_BARREL_02",
                    label = "Heavy Barrel",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_COMBATMG_MK2_CAMO_02"] = {label = "Brushstroke Camo", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_03"] = {label = "Woodland Camo", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_04"] = {label = "Skull", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_05"] = {label = "Sessanta Nove", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_06"] = {label = "Perseus", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_07"] = {label = "Leopard", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_08"] = {label = "Zebra", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_09"] = {label = "Geometric", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_10"] = {label = "Boom!", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_IND_01"] = {label = "Patriotic", price = 2500},
            }
        },
        ["Combat MG"] = {
            hash = "weapon_combatmg",
            label = "Combat MG",
            rateoffire = 65,
            accuracy = 45,
            range = 60,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_COMBATMG_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_COMBATMG_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SCOPE_MEDIUM",
                    label = "Scope",
                    price = 1500,
                },
                ['grip'] = {
                    component = "COMPONENT_AT_AR_AFGRIP",
                    label = "Grip",
                    price = 1500,
                }
            }
        },
        ["Gusenberg Sweeper"] = {
            hash = "weapon_gusenberg",
            label = "Gusenberg Sweeper",
            rateoffire = 65,
            accuracy = 38,
            range = 56,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_GUSENBERG_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_GUSENBERG_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                }
            }
        },
    },
    ["Shotguns"] = {
        ["Assault Shotgun"] = {
            hash = "weapon_assaultshotgun",
            label = "Assault Shotgun",
            rateoffire = 50,
            accuracy = 25,
            range = 15,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_ASSAULTSHOTGUN_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_ASSAULTSHOTGUN_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["suppressor"] = {
                    component = "COMPONENT_AT_AR_SUPP",
                    label = "Suppressor",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["grip"] = {
                    component = "COMPONENT_AT_AR_AFGRIP",
                    label = "Grip",
                    price = 1500,
                }
            }
        },
        ["Bullpup Shotgun"] = {
            hash = "weapon_bullpupshotgun",
            label = "Bullpup Shotgun",
            rateoffire = 20,
            accuracy = 30,
            range = 20,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["suppressor"] = {
                    component = "COMPONENT_AT_AR_SUPP_02",
                    label = "Suppressor",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["grip"] = {
                    component = "COMPONENT_AT_AR_AFGRIP",
                    label = "Grip",
                    price = 1500,
                },
            }
        },
        ["Double Barrel Shotgun"] = {
            hash = "weapon_dbshotgun",
            label = "Double Barrel Shotgun",
            rateoffire = 25,
            accuracy = 15,
            range = 10,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Heavy Shotgun"] = {
            hash = "weapon_heavyshotgun",
            label = "Heavy Shotgun",
            rateoffire = 45,
            accuracy = 30,
            range = 25,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_HEAVYSHOTGUN_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["drummag"] = {
                    component = "COMPONENT_HEAVYSHOTGUN_CLIP_03",
                    label = "Drum Maganize",
                    item = "shutgon_drummag",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_HEAVYSHOTGUN_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["suppressor"] = {
                    component = "COMPONENT_AT_AR_SUPP_02",
                    label = "Suppressor",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["grip"] = {
                    component = "COMPONENT_AT_AR_AFGRIP",
                    label = "Grip",
                    price = 1500,
                },
            }
        },
        ["Musket"] = {
            hash = "weapon_musket",
            label = "Musket",
            rateoffire = 10,
            accuracy = 65,
            range = 85,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Pump Shotgun Mk II"] = {
            hash = "weapon_pumpshotgun_mk2",
            label = "Pump Shotgun Mk II",
            rateoffire = 20,
            accuracy = 30,
            range = 20,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["suppressor"] = {
                    component = "COMPONENT_AT_SR_SUPP_03",
                    label = "Suppressor",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SIGHTS",
                    label = "Holo Scope",
                    price = 1500,
                },
                ["scope2"] = {
                    component = "COMPONENT_AT_SCOPE_MACRO_MK2",
                    label = "Small Scope",
                    price = 1500,
                },
                ["scope3"] = {
                    component = "COMPONENT_AT_SCOPE_SMALL_MK2",
                    label = "Medium Scopee",
                    price = 1500,
                },
            },
            tints = {
                ["COMPONENT_PUMPSHOTGUN_MK2_CAMO_02"] = {label = "Brushstroke Camo", price = 2500},
                ["COMPONENT_PUMPSHOTGUN_MK2_CAMO_03"] = {label = "Woodland Camo", price = 2500},
                ["COMPONENT_PUMPSHOTGUN_MK2_CAMO_04"] = {label = "Skull", price = 2500},
                ["COMPONENT_PUMPSHOTGUN_MK2_CAMO_05"] = {label = "Sessanta Nove", price = 2500},
                ["COMPONENT_PUMPSHOTGUN_MK2_CAMO_06"] = {label = "Perseus", price = 2500},
                ["COMPONENT_PUMPSHOTGUN_MK2_CAMO_07"] = {label = "Leopard", price = 2500},
                ["COMPONENT_PUMPSHOTGUN_MK2_CAMO_08"] = {label = "Zebra", price = 2500},
                ["COMPONENT_PUMPSHOTGUN_MK2_CAMO_09"] = {label = "Geometric", price = 2500},
                ["COMPONENT_PUMPSHOTGUN_MK2_CAMO_10"] = {label = "Boom!", price = 2500},
                ["COMPONENT_PUMPSHOTGUN_MK2_CAMO_IND_01"] = {label = "Patriotic", price = 2500},
                ["COMPONENT_PUMPSHOTGUN_MK2_CAMO"] = {label = "Digital Camo", price = 2500},
                ["COMPONENT_PUMPSHOTGUN_MK2_CLIP_ARMORPIERCING"] = {label = "Steel Buckshot Shells", price = 2500},
                ["COMPONENT_PUMPSHOTGUN_MK2_CLIP_EXPLOSIVE"] = {label = "Explosive Slugs", price = 2500},
                ["COMPONENT_PUMPSHOTGUN_MK2_CLIP_HOLLOWPOINT"] = {label = "Flechette Shells", price = 2500},
                ["COMPONENT_PUMPSHOTGUN_MK2_CLIP_INCENDIARY"] = {label = "Dragon's Breath Shells", price = 2500},
                
            }
        },
        ["Pump Shotgun"] = {
            hash = "weapon_pumpshotgun",
            label = "Pump Shotgun",
            rateoffire = 20,
            accuracy = 30,
            range = 20,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["suppressor"] = {
                    component = "COMPONENT_AT_SR_SUPP",
                    label = "Suppressor",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
            },
            tints = {
                ["COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER"] = {label = "Yusuf Amir Luxury Finish", price = 2500},                
            }
        },
        ["Sawed-Off Shotgun"] = {
            hash = "weapon_sawnoffshotgun",
            label = "Sawed-Off Shotgun",
            rateoffire = 20,
            accuracy = 20,
            range = 15,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Sweeper Shotgun"] = {
            hash = "weapon_autoshotgun",
            label = "Sweeper Shotgun",
            rateoffire = 45,
            accuracy = 22,
            range = 20,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
    },

    ["Assault Rifles"] = {
        ["Assault Rifle"] = {
            hash = "weapon_assaultrifle",
            label = "Assault Rifle",
            rateoffire = 60,
            accuracy = 45,
            range = 45,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_ASSAULTRIFLE_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_ASSAULTRIFLE_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["drummag"] = {
                    component = "COMPONENT_ASSAULTRIFLE_CLIP_03",
                    label = "Drum Maganize",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SCOPE_MACRO",
                    label = "Scope",
                    price = 1500,
                },
                ['suppressor'] = {
                    component = "COMPONENT_AT_AR_SUPP_02",
                    label = "Suppressor",
                    price = 1500,
                },
                ['grip'] = {
                    component = "COMPONENT_AT_AR_AFGRIP",
                    label = "Grip",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_ASSAULTRIFLE_VARMOD_LUXE"] = {label = "Yusuf Amir Luxury Finish", price = 2500},                   
            }
        },
        ["Advanced Rifle"] = {
            hash = "weapon_advancedrifle",
            label = "Advanced Rifle",
            rateoffire = 70,
            accuracy = 50,
            range = 45,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_ADVANCEDRIFLE_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_ADVANCEDRIFLE_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SCOPE_SMALL",
                    label = "Scope",
                    price = 1500,
                },
                ['suppressor'] = {
                    component = "COMPONENT_AT_AR_SUPP",
                    label = "Suppressor",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE"] = {label = "Gilded Gun Metal Finish", price = 2500},                   
            }
        },
        ["Assault Rifle Mk II"] = {
            hash = "weapon_assaultrifle_mk2",
            label = "Assault Rifle Mk II",
            rateoffire = 60,
            accuracy = 45,
            range = 45,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SIGHTS",
                    label = "Holo Scope",
                    price = 1500,
                },
                ["scope2"] = {
                    component = "COMPONENT_AT_SCOPE_MACRO_MK2",
                    label = "Small Scope",
                    price = 1500,
                },
                ["scope3"] = {
                    component = "COMPONENT_AT_SCOPE_MEDIUM_MK2",
                    label = "Large Scope",
                    price = 1500,
                },
                ['suppressor'] = {
                    component = "COMPONENT_AT_AR_SUPP_02",
                    label = "Suppressor",
                    price = 1500,
                },
                ['grip'] = {
                    component = "COMPONENT_AT_AR_AFGRIP_02",
                    label = "Grip",
                    price = 1500,
                },
                ['suppressor2'] = {
                    component = "COMPONENT_AT_MUZZLE_01",
                    label = "Flat Muzzle Brake",
                    price = 1500,
                },
                ['suppressor3'] = {
                    component = "COMPONENT_AT_MUZZLE_02",
                    label = "Tactical Muzzle Brake",
                    price = 1500,
                },
                ['suppressor4'] = {
                    component = "COMPONENT_AT_MUZZLE_03",
                    label = "Fat-End Muzzle Brake",
                    price = 1500,
                },
                ['suppressor5'] = {
                    component = "COMPONENT_AT_MUZZLE_04",
                    label = "Precision Muzzle Brake",
                    price = 1500,
                },
                ['suppressor6'] = {
                    component = "COMPONENT_AT_MUZZLE_05",
                    label = "Heavy Duty Muzzle Brake",
                    price = 1500,
                },
                ['suppressor7'] = {
                    component = "COMPONENT_AT_MUZZLE_06",
                    label = "Slanted Muzzle Brake",
                    price = 1500,
                },
                ['suppressor8'] = {
                    component = "COMPONENT_AT_MUZZLE_07",
                    label = "Split-End Muzzle Brake",
                    price = 1500,
                },
                ["barrel"] = {
                    component = "COMPONENT_AT_SC_BARREL_01",
                    label = "Default Barrel",
                    price = 1500,
                },
                ["barrel2"] = {
                    component = "COMPONENT_AT_SC_BARREL_02",
                    label = "Heavy Barrel",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_ASSAULTRIFLE_MK2_CAMO_02"] = {label = "Brushstroke Camo", price = 2500},
                ["COMPONENT_ASSAULTRIFLE_MK2_CAMO_03"] = {label = "Woodland Camo", price = 2500},
                ["COMPONENT_ASSAULTRIFLE_MK2_CAMO_04"] = {label = "Skull", price = 2500},
                ["COMPONENT_ASSAULTRIFLE_MK2_CAMO_05"] = {label = "Sessanta Nove", price = 2500},
                ["COMPONENT_ASSAULTRIFLE_MK2_CAMO_06"] = {label = "Perseus", price = 2500},
                ["COMPONENT_ASSAULTRIFLE_MK2_CAMO_07"] = {label = "Leopard", price = 2500},
                ["COMPONENT_ASSAULTRIFLE_MK2_CAMO_08"] = {label = "Zebra", price = 2500},
                ["COMPONENT_ASSAULTRIFLE_MK2_CAMO_09"] = {label = "Geometric", price = 2500},
                ["COMPONENT_ASSAULTRIFLE_MK2_CAMO_10"] = {label = "Boom!", price = 2500},
                ["COMPONENT_ASSAULTRIFLE_MK2_CAMO_IND_01"] = {label = "Patriotic", price = 2500},
            }
        },
        ["Bullpup Rifle Mk II"] = {
            hash = "weapon_bullpuprifle_mk2",
            label = "Bullpup Rifle Mk II",
            rateoffire = 72,
            accuracy = 45,
            range = 45,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SIGHTS",
                    label = "Holo Scope",
                    price = 1500,
                },
                ["scope2"] = {
                    component = "COMPONENT_AT_SCOPE_MACRO_02_MK2",
                    label = "Small Scope",
                    price = 1500,
                },
                ["scope3"] = {
                    component = "COMPONENT_AT_SCOPE_SMALL_MK2",
                    label = "Medium Scope",
                    price = 1500,
                },
                ['suppressor'] = {
                    component = "COMPONENT_AT_AR_SUPP",
                    label = "Suppressor",
                    price = 1500,
                },
                ['grip'] = {
                    component = "COMPONENT_AT_AR_AFGRIP_02",
                    label = "Grip",
                    price = 1500,
                },
                ['suppressor2'] = {
                    component = "COMPONENT_AT_MUZZLE_01",
                    label = "Flat Muzzle Brake",
                    price = 1500,
                },
                ['suppressor3'] = {
                    component = "COMPONENT_AT_MUZZLE_02",
                    label = "Tactical Muzzle Brake",
                    price = 1500,
                },
                ['suppressor4'] = {
                    component = "COMPONENT_AT_MUZZLE_03",
                    label = "Fat-End Muzzle Brake",
                    price = 1500,
                },
                ['suppressor5'] = {
                    component = "COMPONENT_AT_MUZZLE_04",
                    label = "Precision Muzzle Brake",
                    price = 1500,
                },
                ['suppressor6'] = {
                    component = "COMPONENT_AT_MUZZLE_05",
                    label = "Heavy Duty Muzzle Brake",
                    price = 1500,
                },
                ['suppressor7'] = {
                    component = "COMPONENT_AT_MUZZLE_06",
                    label = "Slanted Muzzle Brake",
                    price = 1500,
                },
                ['suppressor8'] = {
                    component = "COMPONENT_AT_MUZZLE_07",
                    label = "Split-End Muzzle Brake",
                    price = 1500,
                },
                ["barrel"] = {
                    component = "COMPONENT_AT_BP_BARREL_01",
                    label = "Default Barrel",
                    price = 1500,
                },
                ["barrel2"] = {
                    component = "COMPONENT_AT_BP_BARREL_02",
                    label = "Heavy Barrel",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_BULLPUPRIFLE_MK2_CAMO_02"] = {label = "Brushstroke Camo", price = 2500},
                ["COMPONENT_BULLPUPRIFLE_MK2_CAMO_03"] = {label = "Woodland Camo", price = 2500},
                ["COMPONENT_BULLPUPRIFLE_MK2_CAMO_04"] = {label = "Skull", price = 2500},
                ["COMPONENT_BULLPUPRIFLE_MK2_CAMO_05"] = {label = "Sessanta Nove", price = 2500},
                ["COMPONENT_BULLPUPRIFLE_MK2_CAMO_06"] = {label = "Perseus", price = 2500},
                ["COMPONENT_BULLPUPRIFLE_MK2_CAMO_07"] = {label = "Leopard", price = 2500},
                ["COMPONENT_BULLPUPRIFLE_MK2_CAMO_08"] = {label = "Zebra", price = 2500},
                ["COMPONENT_BULLPUPRIFLE_MK2_CAMO_09"] = {label = "Geometric", price = 2500},
                ["COMPONENT_BULLPUPRIFLE_MK2_CAMO_10"] = {label = "Boom!", price = 2500},
                ["COMPONENT_BULLPUPRIFLE_MK2_CAMO_IND_01"] = {label = "Patriotic", price = 2500},
                ["COMPONENT_BULLPUPRIFLE_MK2_CAMO"] = {label = "Digital Camo", price = 2500},
                ["COMPONENT_BULLPUPRIFLE_MK2_CLIP_ARMORPIERCING"] = {label = "Armor Piercing Rounds", price = 2500},
                ["COMPONENT_BULLPUPRIFLE_MK2_CLIP_FMJ"] = {label = "Full Metal Jacket Rounds", price = 2500},
                ["COMPONENT_BULLPUPRIFLE_MK2_CLIP_HOLLOWPOINT"] = {label = "Flechette Shells", price = 2500},
                ["COMPONENT_BULLPUPRIFLE_MK2_CLIP_INCENDIARY"] = {label = "Dragon's Breath Shells", price = 2500},
                
            }
        },
        ["Bullpup Rifle"] = {
            hash = "weapon_bullpuprifle",
            label = "Bullpup Rifle",
            rateoffire = 72,
            accuracy = 45,
            range = 45,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_BULLPUPRIFLE_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_BULLPUPRIFLE_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SCOPE_SMALL",
                    label = "Holo Scope",
                    price = 1500,
                },
                ['suppressor'] = {
                    component = "COMPONENT_AT_AR_SUPP",
                    label = "Suppressor",
                    price = 1500,
                },
                ['grip'] = {
                    component = "COMPONENT_AT_AR_AFGRIP",
                    label = "Grip",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_BULLPUPRIFLE_VARMOD_LOW"] = {label = "Gilded Gun Metal Finish", price = 2500},                  
            }
        },
        ["Carbine Rifle Mk II"] = {
            hash = "weapon_carbinerifle_mk2",
            label = "Carbine Rifle Mk II",
            rateoffire = 65,
            accuracy = 55,
            range = 45,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_CARBINERIFLE_MK2_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_CARBINERIFLE_MK2_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SIGHTS",
                    label = "Holo Scope",
                    price = 1500,
                },
                ["scope2"] = {
                    component = "COMPONENT_AT_SCOPE_MACRO_MK2",
                    label = "Small Scope",
                    price = 1500,
                },
                ["scope3"] = {
                    component = "COMPONENT_AT_SCOPE_MEDIUM_MK2",
                    label = "Large Scope",
                    price = 1500,
                },
                ['suppressor'] = {
                    component = "COMPONENT_AT_AR_SUPP",
                    label = "Suppressor",
                    price = 1500,
                },
                ['grip'] = {
                    component = "COMPONENT_AT_AR_AFGRIP_02",
                    label = "Grip",
                    price = 1500,
                },
                ['suppressor2'] = {
                    component = "COMPONENT_AT_MUZZLE_01",
                    label = "Flat Muzzle Brake",
                    price = 1500,
                },
                ['suppressor3'] = {
                    component = "COMPONENT_AT_MUZZLE_02",
                    label = "Tactical Muzzle Brake",
                    price = 1500,
                },
                ['suppressor4'] = {
                    component = "COMPONENT_AT_MUZZLE_03",
                    label = "Fat-End Muzzle Brake",
                    price = 1500,
                },
                ['suppressor5'] = {
                    component = "COMPONENT_AT_MUZZLE_04",
                    label = "Precision Muzzle Brake",
                    price = 1500,
                },
                ['suppressor6'] = {
                    component = "COMPONENT_AT_MUZZLE_05",
                    label = "Heavy Duty Muzzle Brake",
                    price = 1500,
                },
                ['suppressor7'] = {
                    component = "COMPONENT_AT_MUZZLE_06",
                    label = "Slanted Muzzle Brake",
                    price = 1500,
                },
                ['suppressor8'] = {
                    component = "COMPONENT_AT_MUZZLE_07",
                    label = "Split-End Muzzle Brake",
                    price = 1500,
                },
                ["barrel"] = {
                    component = "COMPONENT_AT_CR_BARREL_01",
                    label = "Default Barrel",
                    price = 1500,
                },
                ["barrel2"] = {
                    component = "COMPONENT_AT_CR_BARREL_02",
                    label = "Heavy Barrel",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_CARBINERIFLE_MK2_CAMO_02"] = {label = "Brushstroke Camo", price = 2500},
                ["COMPONENT_CARBINERIFLE_MK2_CAMO_03"] = {label = "Woodland Camo", price = 2500},
                ["COMPONENT_CARBINERIFLE_MK2_CAMO_04"] = {label = "Skull", price = 2500},
                ["COMPONENT_CARBINERIFLE_MK2_CAMO_05"] = {label = "Sessanta Nove", price = 2500},
                ["COMPONENT_CARBINERIFLE_MK2_CAMO_06"] = {label = "Perseus", price = 2500},
                ["COMPONENT_CARBINERIFLE_MK2_CAMO_07"] = {label = "Leopard", price = 2500},
                ["COMPONENT_CARBINERIFLE_MK2_CAMO_08"] = {label = "Zebra", price = 2500},
                ["COMPONENT_CARBINERIFLE_MK2_CAMO_09"] = {label = "Geometric", price = 2500},
                ["COMPONENT_CARBINERIFLE_MK2_CAMO_10"] = {label = "Boom!", price = 2500},
                ["COMPONENT_CARBINERIFLE_MK2_CAMO_IND_01"] = {label = "Patriotic", price = 2500},
                ["COMPONENT_CARBINERIFLE_MK2_CAMO"] = {label = "Digital Camo", price = 2500},
                ["COMPONENT_CARBINERIFLE_MK2_CLIP_ARMORPIERCING"] = {label = "Armor Piercing Rounds", price = 2500},
                ["COMPONENT_CARBINERIFLE_MK2_CLIP_FMJ"] = {label = "Full Metal Jacket Rounds", price = 2500},
                ["COMPONENT_CARBINERIFLE_MK2_CLIP_HOLLOWPOINT"] = {label = "Flechette Shells", price = 2500},
                ["COMPONENT_CARBINERIFLE_MK2_CLIP_INCENDIARY"] = {label = "Dragon's Breath Shells", price = 2500},
                
            }
        },
        ["Carbine Rifle"] = {
            hash = "weapon_carbinerifle",
            label = "Carbine Rifle",
            rateoffire = 65,
            accuracy = 55,
            range = 45,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_CARBINERIFLE_CLIP_02",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_CARBINERIFLE_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["drummag"] = {
                    component = "COMPONENT_CARBINERIFLE_CLIP_03",
                    label = "Drum Maganize",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SCOPE_MEDIUM",
                    label = "3x Scope",
                    price = 1500,
                },
                ['suppressor'] = {
                    component = "COMPONENT_AT_AR_SUPP",
                    label = "Suppressor",
                    price = 1500,
                },
                ['grip'] = {
                    component = "COMPONENT_AT_AR_AFGRIP",
                    label = "Grip",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_CARBINERIFLE_VARMOD_LUXE"] = {label = "Yusuf Amir Luxury Finish", price = 2500},              
            }
        },
        ["Compact Rifle"] = {
            hash = "weapon_compactrifle",
            label = "Compact Rifle",
            rateoffire = 60,
            accuracy = 35,
            range = 45,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_COMPACTRIFLE_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_COMPACTRIFLE_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["drummag"] = {
                    component = "COMPONENT_COMPACTRIFLE_CLIP_03",
                    label = "Drum Maganize",
                    price = 1500,
                }
            }
        },
        ["Special Carbine Mk II"] = {
            hash = "weapon_specialcarbine_mk2",
            label = "Special Carbine Mk II",
            rateoffire = 65,
            accuracy = 55,
            range = 40,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_SPECIALCARBINE_MK2_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_SPECIALCARBINE_MK2_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SIGHTS",
                    label = "Holo Scope",
                    price = 1500,
                },
                ["scope2"] = {
                    component = "COMPONENT_AT_SCOPE_MACRO_MK2",
                    label = "Small Scope",
                    price = 1500,
                },
                ["scope3"] = {
                    component = "COMPONENT_AT_SCOPE_MEDIUM_MK2",
                    label = "Large Scope",
                    price = 1500,
                },
                ['suppressor'] = {
                    component = "COMPONENT_AT_AR_SUPP_02",
                    label = "Suppressor",
                    price = 1500,
                },
                ['grip'] = {
                    component = "COMPONENT_AT_AR_AFGRIP_02",
                    label = "Grip",
                    price = 1500,
                },
                ['suppressor2'] = {
                    component = "COMPONENT_AT_MUZZLE_01",
                    label = "Flat Muzzle Brake",
                    price = 1500,
                },
                ['suppressor3'] = {
                    component = "COMPONENT_AT_MUZZLE_02",
                    label = "Tactical Muzzle Brake",
                    price = 1500,
                },
                ['suppressor4'] = {
                    component = "COMPONENT_AT_MUZZLE_03",
                    label = "Fat-End Muzzle Brake",
                    price = 1500,
                },
                ['suppressor5'] = {
                    component = "COMPONENT_AT_MUZZLE_04",
                    label = "Precision Muzzle Brake",
                    price = 1500,
                },
                ['suppressor6'] = {
                    component = "COMPONENT_AT_MUZZLE_05",
                    label = "Heavy Duty Muzzle Brake",
                    price = 1500,
                },
                ['suppressor7'] = {
                    component = "COMPONENT_AT_MUZZLE_06",
                    label = "Slanted Muzzle Brake",
                    price = 1500,
                },
                ['suppressor8'] = {
                    component = "COMPONENT_AT_MUZZLE_07",
                    label = "Split-End Muzzle Brake",
                    price = 1500,
                },
                ["barrel"] = {
                    component = "COMPONENT_AT_SC_BARREL_01",
                    label = "Default Barrel",
                    price = 1500,
                },
                ["barrel2"] = {
                    component = "COMPONENT_AT_SC_BARREL_02",
                    label = "Heavy Barrel",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_SPECIALCARBINE_MK2_CAMO_02"] = {label = "Brushstroke Camo", price = 2500},
                ["COMPONENT_SPECIALCARBINE_MK2_CAMO_03"] = {label = "Woodland Camo", price = 2500},
                ["COMPONENT_SPECIALCARBINE_MK2_CAMO_04"] = {label = "Skull", price = 2500},
                ["COMPONENT_SPECIALCARBINE_MK2_CAMO_05"] = {label = "Sessanta Nove", price = 2500},
                ["COMPONENT_SPECIALCARBINE_MK2_CAMO_06"] = {label = "Perseus", price = 2500},
                ["COMPONENT_SPECIALCARBINE_MK2_CAMO_07"] = {label = "Leopard", price = 2500},
                ["COMPONENT_SPECIALCARBINE_MK2_CAMO_08"] = {label = "Zebra", price = 2500},
                ["COMPONENT_SPECIALCARBINE_MK2_CAMO_09"] = {label = "Geometric", price = 2500},
                ["COMPONENT_SPECIALCARBINE_MK2_CAMO_10"] = {label = "Boom!", price = 2500},
                ["COMPONENT_SPECIALCARBINE_MK2_CAMO_IND_01"] = {label = "Patriotic", price = 2500},
                ["COMPONENT_SPECIALCARBINE_MK2_CAMO"] = {label = "Digital Camo", price = 2500},
                ["COMPONENT_SPECIALCARBINE_MK2_CLIP_ARMORPIERCING"] = {label = "Armor Piercing Rounds", price = 2500},
                ["COMPONENT_SPECIALCARBINE_MK2_CLIP_FMJ"] = {label = "Full Metal Jacket Rounds", price = 2500},
                ["COMPONENT_SPECIALCARBINE_MK2_CLIP_INCENDIARY"] = {label = "Incendiary Rounds", price = 2500},
            }
        },
        ["Special Carbine"] = {
            hash = "weapon_specialcarbine",
            label = "Special Carbine",
            rateoffire = 65,
            accuracy = 55,
            range = 40,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_SPECIALCARBINE_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_SPECIALCARBINE_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["drummag"] = {
                    component = "COMPONENT_SPECIALCARBINE_CLIP_03",
                    label = "Drum Maganize",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SCOPE_MEDIUM",
                    label = "Scope",
                    price = 1500,
                },
                ['suppressor'] = {
                    component = "COMPONENT_AT_AR_SUPP_02",
                    label = "Suppressor",
                    price = 1500,
                },
                ['grip'] = {
                    component = "COMPONENT_AT_AR_AFGRIP",
                    label = "Grip",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER"] = {label = "Etched Gun Metal Finish", price = 2500},
            }
        },
    },
    ["LMG's"] = {
        ["Combat MG Mk II"] = {
            hash = "weapon_combatmg_mk2",
            label = "Combat MG Mk II",
            rateoffire = 65,
            accuracy = 45,
            range = 60,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_COMBATMG_MK2_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_COMBATMG_MK2_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SIGHTS",
                    label = "Holo Scope",
                    price = 1500,
                },
                ["scope2"] = {
                    component = "COMPONENT_AT_SCOPE_SMALL_MK2",
                    label = "Medium Scope",
                    price = 1500,
                },
                ["scope3"] = {
                    component = "COMPONENT_AT_SCOPE_MEDIUM_MK2",
                    label = "Large Scope",
                    price = 1500,
                },
                ['grip'] = {
                    component = "COMPONENT_AT_AR_AFGRIP_02",
                    label = "Grip",
                    price = 1500,
                },
                ['suppressor2'] = {
                    component = "COMPONENT_AT_MUZZLE_01",
                    label = "Flat Muzzle Brake",
                    price = 1500,
                },
                ['suppressor3'] = {
                    component = "COMPONENT_AT_MUZZLE_02",
                    label = "Tactical Muzzle Brake",
                    price = 1500,
                },
                ['suppressor4'] = {
                    component = "COMPONENT_AT_MUZZLE_03",
                    label = "Fat-End Muzzle Brake",
                    price = 1500,
                },
                ['suppressor5'] = {
                    component = "COMPONENT_AT_MUZZLE_04",
                    label = "Precision Muzzle Brake",
                    price = 1500,
                },
                ['suppressor6'] = {
                    component = "COMPONENT_AT_MUZZLE_05",
                    label = "Heavy Duty Muzzle Brake",
                    price = 1500,
                },
                ['suppressor7'] = {
                    component = "COMPONENT_AT_MUZZLE_06",
                    label = "Slanted Muzzle Brake",
                    price = 1500,
                },
                ['suppressor8'] = {
                    component = "COMPONENT_AT_MUZZLE_07",
                    label = "Split-End Muzzle Brake",
                    price = 1500,
                },
                ["barrel"] = {
                    component = "COMPONENT_AT_MG_BARREL_01",
                    label = "Default Barrel",
                    price = 1500,
                },
                ["barrel2"] = {
                    component = "COMPONENT_AT_MG_BARREL_02",
                    label = "Heavy Barrel",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_COMBATMG_MK2_CAMO_02"] = {label = "Brushstroke Camo", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_03"] = {label = "Woodland Camo", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_04"] = {label = "Skull", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_05"] = {label = "Sessanta Nove", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_06"] = {label = "Perseus", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_07"] = {label = "Leopard", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_08"] = {label = "Zebra", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_09"] = {label = "Geometric", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_10"] = {label = "Boom!", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO_IND_01"] = {label = "Patriotic", price = 2500},
                ["COMPONENT_COMBATMG_MK2_CAMO"] = {label = "Digital Camo", price = 2500},
            }
        },
        ["Combat MG"] = {
            hash = "weapon_combatmg",
            label = "Combat MG",
            rateoffire = 65,
            accuracy = 45,
            range = 60,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_COMBATMG_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_COMBATMG_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SCOPE_MEDIUM",
                    label = "Scope",
                    price = 1500,
                },
                ['grip'] = {
                    component = "COMPONENT_AT_AR_AFGRIP",
                    label = "Grip",
                    price = 1500,
                }
            }
        },
        ["Gusenberg Sweeper"] = {
            hash = "weapon_gusenberg",
            label = "Gusenberg Sweeper",
            rateoffire = 65,
            accuracy = 38,
            range = 56,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_GUSENBERG_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_GUSENBERG_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                }
            }
        },
        ["MG"] = {
            hash = "weapon_mg",
            label = "MG",
            rateoffire = 60,
            accuracy = 40,
            range = 60,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_MG_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_MG_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SCOPE_SMALL_02",
                    label = "Scope",
                    price = 1500,
                }
            },
            tints = {
                ["Yusuf Amir Luxury Finish"] = {label = "COMPONENT_MG_VARMOD_LOWRIDER", price = 2500},

            }
        },
        ["Unholy Hellbringer"] = {
            hash = "weapon_raycarbine",
            label = "Unholy Hellbringer",
            rateoffire = 65,
            accuracy = 45,
            range = 60,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
    },
    ["Sniper Rifles"] = {
        ["Heavy Sniper Mk II"] = {
            hash = "weapon_heavysniper_mk2",
            label = "Heavy Sniper Mk II",
            rateoffire = 20,
            accuracy = 90,
            range = 100,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_HEAVYSNIPER_MK2_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_HEAVYSNIPER_MK2_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SCOPE_LARGE_MK2",
                    label = "Zoom Scope",
                    price = 1500,
                },
                ["scope2"] = {
                    component = "COMPONENT_AT_SCOPE_MAX",
                    label = "Advanced Scope",
                    price = 1500,
                },
                ["scope3"] = {
                    component = "COMPONENT_AT_SCOPE_THERMAL",
                    label = "Thermal Scope",
                    price = 1500,
                },
                ["suppressor"] = {
                    component = "COMPONENT_AT_SR_SUPP_03",
                    label = "Suppressor",
                    price = 1500,
                },
                ['suppressor2'] = {
                    component = "COMPONENT_AT_MUZZLE_08",
                    label = "Squared Muzzle Brake",
                    price = 1500,
                },
                ['suppressor3'] = {
                    component = "COMPONENT_AT_MUZZLE_09",
                    label = "Bell-End Muzzle Brake",
                    price = 1500,
                },
                ["barrel"] = {
                    component = "COMPONENT_AT_SR_BARREL_01",
                    label = "Default Barrel",
                    price = 1500,
                },
                ["barrel2"] = {
                    component = "COMPONENT_AT_SR_BARREL_02",
                    label = "Heavy Barrel",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_HEAVYSNIPER_MK2_CAMO_02"] = {label = "Brushstroke Camo", price = 2500},
                ["COMPONENT_HEAVYSNIPER_MK2_CAMO_03"] = {label = "Woodland Camo", price = 2500},
                ["COMPONENT_HEAVYSNIPER_MK2_CAMO_04"] = {label = "Skull", price = 2500},
                ["COMPONENT_HEAVYSNIPER_MK2_CAMO_05"] = {label = "Sessanta Nove", price = 2500},
                ["COMPONENT_HEAVYSNIPER_MK2_CAMO_06"] = {label = "Perseus", price = 2500},
                ["COMPONENT_HEAVYSNIPER_MK2_CAMO_07"] = {label = "Leopard", price = 2500},
                ["COMPONENT_HEAVYSNIPER_MK2_CAMO_08"] = {label = "Zebra", price = 2500},
                ["COMPONENT_HEAVYSNIPER_MK2_CAMO_09"] = {label = "Geometric", price = 2500},
                ["COMPONENT_HEAVYSNIPER_MK2_CAMO_10"] = {label = "Boom!", price = 2500},
                ["COMPONENT_HEAVYSNIPER_MK2_CAMO_IND_01"] = {label = "Patriotic", price = 2500},
                ["COMPONENT_HEAVYSNIPER_MK2_CAMO"] = {label = "Digital Camo", price = 2500},
                ["COMPONENT_HEAVYSNIPER_MK2_CLIP_ARMORPIERCING"] = {label = "Armor Piercing Rounds", price = 2500},
                ["COMPONENT_HEAVYSNIPER_MK2_CLIP_FMJ"] = {label = "Full Metal Jacket Rounds", price = 2500},
                ["COMPONENT_HEAVYSNIPER_MK2_CLIP_INCENDIARY"] = {label = "Incendiary Rounds", price = 2500},
            }
        },
        ["Heavy Sniper"] = {
            hash = "weapon_heavysniper",
            label = "Heavy Sniper",
            rateoffire = 20,
            accuracy = 90,
            range = 100,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_HEAVYSNIPER_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SCOPE_LARGE",
                    label = "Scope",
                    price = 1500,
                },
                ["scope2"] = {
                    component = "COMPONENT_AT_SCOPE_MAX",
                    label = "Advanced Scope",
                    price = 1500,
                }
            }
        },
        ["Marksman Rifle Mk II"] = {
            hash = "weapon_marksmanrifle_mk2",
            label = "Marksman Rifle Mk II",
            rateoffire = 40,
            accuracy = 80,
            range = 90,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                -- ["scope"] = {
                --     component = "COMPONENT_AT_SIGHTS",
                --     label = "Holo Scope",
                --
                -- },
                ["scope2"] = {
                    component = "COMPONENT_AT_SCOPE_MEDIUM_MK2",
                    label = "Large Scope",
                    price = 1500,
                },
                ["scope3"] = {
                    component = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM_MK2",
                    label = "Zoom Scope",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["suppressor"] = {
                    component = "COMPONENT_AT_AR_SUPP",
                    label = "Suppressor",
                    price = 1500,
                },
                ['grip'] = {
                    component = "COMPONENT_AT_AR_AFGRIP_02",
                    label = "Grip",
                    price = 1500,
                },
                ['suppressor2'] = {
                    component = "COMPONENT_AT_MUZZLE_01",
                    label = "Flat Muzzle Brake",
                    price = 1500,
                },
                ['suppressor3'] = {
                    component = "COMPONENT_AT_MUZZLE_02",
                    label = "Tactical Muzzle Brake",
                    price = 1500,
                },
                ['suppressor4'] = {
                    component = "COMPONENT_AT_MUZZLE_03",
                    label = "Fat-End Muzzle Brake",
                    price = 1500,
                },
                ['suppressor5'] = {
                    component = "COMPONENT_AT_MUZZLE_04",
                    label = "Precision Muzzle Brake",
                    price = 1500,
                },
                ['suppressor6'] = {
                    component = "COMPONENT_AT_MUZZLE_05",
                    label = "Heavy Duty Muzzle Brake",
                    price = 1500,
                },
                ['suppressor7'] = {
                    component = "COMPONENT_AT_MUZZLE_06",
                    label = "Slanted Muzzle Brake",
                    price = 1500,
                },
                ['suppressor8'] = {
                    component = "COMPONENT_AT_MUZZLE_07",
                    label = "Split-End Muzzle Brake",
                    price = 1500,
                },
                ["barrel"] = {
                    component = "COMPONENT_AT_MRFL_BARREL_01",
                    label = "Default Barrel",
                    price = 1500,
                },
                ["barrel2"] = {
                    component = "COMPONENT_AT_MRFL_BARREL_02",
                    label = "Heavy Barrel",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_MARKSMANRIFLE_MK2_CAMO_02"] = {label = "Brushstroke Camo", price = 2500},
                ["COMPONENT_MARKSMANRIFLE_MK2_CAMO_03"] = {label = "Woodland Camo", price = 2500},
                ["COMPONENT_MARKSMANRIFLE_MK2_CAMO_04"] = {label = "Skull", price = 2500},
                ["COMPONENT_MARKSMANRIFLE_MK2_CAMO_05"] = {label = "Sessanta Nove", price = 2500},
                ["COMPONENT_MARKSMANRIFLE_MK2_CAMO_06"] = {label = "Perseus", price = 2500},
                ["COMPONENT_MARKSMANRIFLE_MK2_CAMO_07"] = {label = "Leopard", price = 2500},
                ["COMPONENT_MARKSMANRIFLE_MK2_CAMO_08"] = {label = "Zebra", price = 2500},
                ["COMPONENT_MARKSMANRIFLE_MK2_CAMO_09"] = {label = "Geometric", price = 2500},
                ["COMPONENT_MARKSMANRIFLE_MK2_CAMO_10"] = {label = "Boom!", price = 2500},
                ["COMPONENT_MARKSMANRIFLE_MK2_CAMO_IND_01"] = {label = "Patriotic", price = 2500},
                ["COMPONENT_MARKSMANRIFLE_MK2_CAMO"] = {label = "Digital Camo", price = 2500},
                ["COMPONENT_MARKSMANRIFLE_MK2_CLIP_ARMORPIERCING"] = {label = "Armor Piercing Rounds", price = 2500},
                ["COMPONENT_MARKSMANRIFLE_MK2_CLIP_FMJ"] = {label = "Full Metal Jacket Rounds", price = 2500},
                ["COMPONENT_MARKSMANRIFLE_MK2_CLIP_INCENDIARY"] = {label = "Incendiary Rounds", price = 2500},
            }
        },
        ["Marksman Rifle"] = {
            hash = "weapon_marksmanrifle",
            label = "Marksman Rifle",
            rateoffire = 40,
            accuracy = 80,
            range = 90,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["defaultclip"] = {
                    component = "COMPONENT_MARKSMANRIFLE_CLIP_01",
                    label = "Default Magazine",
                    price = 1500,
                },
                ["extendedclip"] = {
                    component = "COMPONENT_MARKSMANRIFLE_CLIP_02",
                    label = "Extended Magazine",
                    price = 1500,
                },
                ["scope"] = {
                    component = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM",
                    label = "Scope",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ["suppressor"] = {
                    component = "COMPONENT_AT_AR_SUPP",
                    label = "Suppressor",
                    price = 1500,
                },
                ['grip'] = {
                    component = "COMPONENT_AT_AR_AFGRIP",
                    label = "Grip",
                    price = 1500,
                }
            },
            tints = {
                ["COMPONENT_MARKSMANRIFLE_VARMOD_LUXE"] = {label = "Yusuf Amir Luxury Finish", price = 2500}
            }
        },
        ["Sniper Rifle"] = {
            hash = "weapon_sniperrifle",
            label = "Sniper Rifle",
            rateoffire = 25,
            accuracy = 70,
            range = 95,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["scope"] = {
                    component = "COMPONENT_AT_SCOPE_LARGE",
                    label = "Scope",
                    price = 1500,
                },
                ["scope2"] = {
                    component = "COMPONENT_AT_SCOPE_MAX",
                    label = "Advanced Scope",
                    price = 1500,
                }
            }
        },
    },
    ["Heavy Weapons"] = {
        ["Compact Grenade Launcher"] = {
            hash = "weapon_compactlauncher",
            label = "Compact Grenade Launcher",
            rateoffire = 10,
            accuracy = 15,
            range = 55,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Firework Launcher"] = {
            hash = "weapon_firework",
            label = "Firework Launcher",
            rateoffire = 5,
            accuracy = 12,
            range = 60,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Grenade Launcher"] = {
            hash = "weapon_grenadelauncher",
            label = "Grenade Launcher",
            rateoffire = 20,
            accuracy = 10,
            range = 50,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
            attachments = {
                ["scope"] = {
                    component = "COMPONENT_AT_SCOPE_SMALL",
                    label = "Scope",
                    price = 1500,
                },
                ["flashlight"] = {
                    component = "COMPONENT_AT_AR_FLSH",
                    label = "Flashlight",
                    price = 1500,
                },
                ['grip'] = {
                    component = "COMPONENT_AT_AR_AFGRIP",
                    label = "Grip",
                    price = 1500,
                }
            }
        },
        ["Homing Launcher"] = {
            hash = "weapon_hominglauncher",
            label = "Homing Launcher",
            rateoffire = 5,
            accuracy = 25,
            range = 75,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Minigun"] = {
            hash = "weapon_minigun",
            label = "Minigun",
            rateoffire = 100,
            accuracy = 40,
            range = 55,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Railgun"] = {
            hash = "weapon_railgun",
            label = "Railgun",
            rateoffire = 25,
            accuracy = 20,
            range = 70,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["RPG"] = {
            hash = "weapon_rpg",
            label = "RPG",
            rateoffire = 5,
            accuracy = 10,
            range = 70,
            price = 25000
            ,description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Widowmaker"] = {
            hash = "weapon_rayminigun",
            label = "Widowmaker",
            rateoffire = 100,
            accuracy = 40,
            range = 55,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
    },
    ["Throwable"] = {
        ["Ball"] = {
            hash = "weapon_ball",
            label = "Ball",
            rateoffire = 1,
            accuracy = 10,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["BZ Gas"] = {
            hash = "weapon_bzgas",
            label = "BZ Gas",
            rateoffire = 1,
            accuracy = 10,
            range = 15,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Flare"] = {
            hash = "weapon_flare",
            label = "Flare",
            rateoffire = 1,
            accuracy = 10,
            range = 25,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Grenade"] = {
            hash = "weapon_grenade",
            label = "Grenade",
            rateoffire = 1,
            accuracy = 10,
            range = 15,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Molotov"] = {
            hash = "weapon_molotov",
            label = "Molotov",
            rateoffire = 1,
            accuracy = 20,
            range = 8,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Pipe Bomb"] = {
            hash = "weapon_pipebomb",
            label = "Pipe Bomb",
            rateoffire = 1,
            accuracy = 35,
            range = 15,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Proximity Mine"] = {
            hash = "weapon_proxmine",
            label = "Proximity Mine",
            rateoffire = 1,
            accuracy = 30,
            range = 20,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Snowball"] = {
            hash = "weapon_snowball",
            label = "Snowball",
            rateoffire = 1,
            accuracy = 10,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Sticky Bomb"] = {
            hash = "weapon_stickybomb",
            label = "Sticky Bomb",
            rateoffire = 1,
            accuracy = 30,
            range = 10,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Tear Gas"] = {
            hash = "weapon_smokegrenade",
            label = "Tear Gas",
            rateoffire = 1,
            accuracy = 10,
            range = 15,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
    },
    ["Melee"] = {
        ["Antique Cavalry Dagger"] = {
            hash = "weapon_dagger",
            label = "Antique Cavalry Dagger",
            rateoffire = 20,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Baseball Bat"] = {
            hash = "weapon_bat",
            label = "Baseball Bat",
            rateoffire = 10,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Battle Axe"] = {
            hash = "weapon_battleaxe",
            label = "Battle Axe",
            rateoffire = 15,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Bottle"] = {
            hash = "weapon_bottle",
            label = "Bottle",
            rateoffire = 15,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Crowbar"] = {
            hash = "weapon_crowbar",
            label = "Crowbar",
            rateoffire = 15,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Flashlight"] = {
            hash = "weapon_flashlight",
            label = "Flashlight",
            rateoffire = 15,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Golf Club"] = {
            hash = "weapon_golfclub",
            label = "Golf Club",
            rateoffire = 10,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Hammer"] = {
            hash = "weapon_hammer",
            label = "Hammer",
            rateoffire = 15,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Hatchet"] = {
            hash = "weapon_hatchet",
            label = "Hatchet",
            rateoffire = 15,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Knife"] = {
            hash = "weapon_knife",
            label = "Knife",
            rateoffire = 20,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Knuckle Duster"] = {
            hash = "weapon_knuckle",
            label = "Knuckle Duster",
            rateoffire = 20,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Machete"] = {
            hash = "weapon_machete",
            label = "Machete",
            rateoffire = 15,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Nightstick"] = {
            hash = "weapon_nightstick",
            label = "Nightstick",
            rateoffire = 15,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Pipe Wrench"] = {
            hash = "weapon_wrench",
            label = "Pipe Wrench",
            rateoffire = 15,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Pool Cue"] = {
            hash = "weapon_poolcue",
            label = "Pool Cue",
            rateoffire = 10,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Stone Hatchet"] = {
            hash = "weapon_stone_hatchet",
            label = "Stone Hatchet",
            rateoffire = 15,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Switchblade"] = {
            hash = "weapon_switchblade",
            label = "Switchblade",
            rateoffire = 20,
            accuracy = 0,
            range = 0,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
    },
    ["Other"] = {
        ["Fire Extinguisher"] = {
            hash = "weapon_fireextinguisher",
            label = "Fire Extinguisher",
            rateoffire = 100,
            accuracy = 10,
            range = 35,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Jerry Can"] = {
            hash = "weapon_petrolcan",
            label = "Jerry Can",
            rateoffire = 10,
            accuracy = 30,
            range = 1,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
        ["Stun Gun"] = {
            hash = "weapon_stungun",
            label = "Stun Gun",
            rateoffire = 10,
            accuracy = 40,
            range = 5,
            price = 25000,
            description = "This weapon belongs to the Assault Rifles weapon class in the game. The Carbine Rifle has featured in multiple Grand Theft Auto titles under different names. This is a fully-automatic weapon that can be fitted with a variety of attachments. There is also a setup mission in GTA V by the name Carbine Rifles in which the player has to hijack a tactical van full of weapons including Carbine Rifles.",
        },
    },
}