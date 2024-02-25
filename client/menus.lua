local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('tmw-crafting:guncrafting', function(data)
    exports['qb-menu']:openMenu({
       {
           header = "Black Market Crafting",
           isMenuHeader = true,
       },

       {
           header = "Weapons",
           txt = "Pistols (more soon)",
           params = {
               event = "tmw-crafting:weps", 
               args = {
                   number = 0,
               }
           }
       },
    {
        header = "Weapon Attachments",
        txt = "Pistol Attachments (more soon)",
        params = {
            event = "tmw-crafting:attachments",
            args = {
                number = 2,
            }
        }
    }, 
       {
           header = "Weapon Ammunition",
           txt = "Ammunition for Shotguns, SMG's and Rifle's",
           params = {
               event = "tmw-crafting:ammo",
               args = {
                   number = 3,
               }
           }
       },  
       {
            header = "High-Grade Electronics",
            txt = "Extremely useful technology",
            params = {
            event = "tmw-crafting:technology",
            args = {
                number = 3,
                }
            }
        },    
        {
            header = "Tools",
            txt = "Extremely useful tools",
            params = {
            event = "tmw-crafting:tools",
            args = {
                number = 3,
                }
            }
        },    
       {
           header = "Close",
            txt = "Close Menu",
           params = {
               event = "qb-menu:closeMenu",
               args = {
                   number = 4,
               }
           }
       },
   })
   end)

   RegisterNetEvent('tmw-crafting:attachments', function(data)
    exports['qb-menu']:openMenu({
        {
           header = "Weapon Attachments",
           isMenuHeader = true,
        },
        {
            header = "Pistol Extended Clip",
             txt = "90 MetalScrap, 120 Steel, 45 Iron, 60 Aluminum, 30 Rubber, ",
            params = {
                event = "tmw-crafting:pistol_extendedclip", 
                args = {
                    number = 1,
               }
           }
        },
        {
            header = "Pistol Suppressor",
             txt = "75 MetalScrap, 150 Steel, 50 Iron, 30 Aluminum, 40 Rubber, 1 blueprint ",
            params = {
                event = "tmw-crafting:pistol_extendedclip", 
                args = {
                    number = 1,
               }
           }
        },
        {
            header = "Main Menu",
            txt = "",
           params = {
                event = "tmw-crafting:guncrafting",
                args = {
                    number = 9,
                }
            }
        },
    })
    end)  

    RegisterNetEvent('tmw-crafting:weps', function(data)
        exports['qb-menu']:openMenu({
            {
               header = "Weapons",
               isMenuHeader = true,
            },
            {
                header = "Pistol MK2",
                 txt = "90 MetalScrap, 100 Steel, 50 Iron, 90 Aluminum, 65 Rubber, 1 Blueprint",
                params = {
                    event = "tmw-crafting:weapon_pistol", 
                    args = {
                        number = 0,
                   }
               }
            },
            {
                header = "Main Menu",
                txt = "",
               params = {
                    event = "tmw-crafting:guncrafting",
                    args = {
                        number = 9,
                    }
                }
            },
        })
end) 

RegisterNetEvent('tmw-crafting:ammo', function(data)
            exports['qb-menu']:openMenu({
                {
                   header = "Weapon Ammunition",
                   isMenuHeader = true,
                },
                {
                    header = "Shotgun Ammo",
                     txt = "140 MetalScrap, 50 Steel, 60 Iron, 60 Aluminum",
                    params = {
                        event = "tmw-crafting:shotgun_ammo", 
                        args = {
                            number = 0,
                       }
                   }
                },
                {
                    header = "SMG Ammo",
                     txt = "140 MetalScrap, 50 Steel, 60 Iron, 60 Aluminum",
                    params = {
                        event = "tmw-crafting:smg_ammo", 
                        args = {
                            number = 1,
                       }
                   }
                },
                {
                    header = "Rifle Ammo",
                     txt = "140 MetalScrap, 50 Steel, 60 Iron, 60 Aluminum",
                    params = {
                        event = "tmw-crafting:rifle_ammo", 
                        args = {
                            number = 2,
                       }
                   }
                },
                {
                    header = "Main Menu",
                    txt = "",
                   params = {
                        event = "tmw-crafting:guncrafting",
                        args = {
                            number = 3,
                        }
                    }
                },
            })
end) 

            
           
RegisterNetEvent('tmw-crafting:technology', function(data)
                exports['qb-menu']:openMenu({
                    {
                       header = "High-Grade Electronics",
                       isMenuHeader = true,
                    },
                    {
                        header = "Boosting Tablet",
                         txt = "130 MetalScrap, 200 Steel, 125 Iron, 200 Aluminum, 25 solder, 50 loose wires, 1 soldering iron, 20 electronic kits",
                        params = {
                            event = "tmw-crafting:laptop", 
                            args = {
                                number = 0,
                           }
                       }
                    },
                    {
                    header = "Trojan USB",
                         txt = "75 MetalScrap, 25 Steel, 100 Iron, 25 solder, 50 loose wires, 1 soldering iron, 3 electronic kits",
                        params = {
                            event = "tmw-crafting:Trojanusb", 
                            args = {
                                number = 1,
                           }
                       }
                    },
                    {
                        header = "Main Menu",
                        txt = "",
                       params = {
                            event = "tmw-crafting:guncrafting",
                            args = {
                                number = 3,
                            }
                        }
                    },
                })
end)

RegisterNetEvent('tmw-crafting:tools', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Tools",
            isMenuHeader = true,
        },
        {
            header = "Handcuffs",
            txt = "100 Steel, 100 Iron, 100 Aluminum,",
            params = {
                event = "tmw-crafting:Handcuffs", 
                args = {
                    number = 0,
                }
            }
        },
        {
            header = "drill",
                 txt = "75 MetalScrap, 100 Steel, 100 Iron, 25 solder, 50 loose wires, 1 soldering iron, 10 electronic kits",
                params = {
                    event = "tmw-crafting:drill", 
                    args = {
                        number = 1,
                }
            }
        },
        {
            header = "Main Menu",
            txt = "",
            params = {
                event = "tmw-crafting:guncrafting",
                args = {
                    number = 3,
                }
            }
        }
    })
end)
