---crafting bench locations
exports['qb-target']:AddBoxZone(Config.benchName.benchNames[1], Config.benchLoc.benchLocs[1], 1.4, 1.4,  {
    name=Config.benchName.benchNames[1],
    heading=354,
    debugPoly=false,
}, {
    options = {
        {
        event = "tmw-crafting:guncrafting",
        icon = "fa fa-wrench",
        label = "Black Market Crafting",
        },
    },
    distance = 1.5
})

exports['qb-target']:AddBoxZone(Config.benchName.benchNames[2], Config.benchLoc.benchLocs[2], 1.4, 1.4,  {
    name=Config.benchName.benchNames[2],
    heading=354,
    debugPoly=false,
}, {
    options = {
        {
        event = "tmw-crafting:guncrafting",
        icon = "fa fa-wrench",
        label = "Russian Black Market Crafting",
        },
    },
    distance = 1.5
})

exports['qb-target']:AddBoxZone(Config.benchName.benchNames[3], Config.benchLoc.benchLocs[3], 1.4, 1.4,  {
    name=Config.benchName.benchNames[3],
    heading=354,
    debugPoly=false,
}, {
    options = {
        {
        event = "tmw-crafting:guncrafting",
        icon = "fa fa-wrench",
        label = "Crips Black Market Crafting",
        },
    },
    distance = 1.5
})



