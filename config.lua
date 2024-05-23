Config = {}

Config.notif = 2 -- Type de notification 1 = ESX notification | 2 = OX notification

Config.localisation = {
    {
        pos = { x = -231.547, y = -898.141, z = 29.886, h = 342.99 }, -- Position du blips ainsi que du ped
        name = 'csb_car3guy1', -- Nom du ped
        blocking = true, -- true = ped bloquer | false = ped qui change de place si vous le frapper
        invincible = true, -- true = ped imortel | false = ped susceptible de mourir
        freeze = true, -- true = le ped reste statique | false = le ped n'est pas statique
        icon = 'fa-solid fa-car-side', -- Icône de l'interaction alt : https://fontawesome.com/search
        titre = 'Location de voiture', -- Nom de l'interaction alt
        distance = 2.5, -- Distance à laquelle vous pouvez interagir
        menu = 1, -- Numéro du menu a mettre le même avec nombre plus bas pour relier les 2
        blip = {
            sprite = 464, -- Icon du blip : https://docs.fivem.net/docs/game-references/blips/
            scale = 0.8, -- Taille du blip
            colour = 11,  -- Couleur du blip : https://docs.fivem.net/docs/game-references/blips/
            name = "Location de véhicule", -- Nom du blip
        },
    },
    {
        pos = { x = 151.23, y = -1000.23, z = 29.34, h = 161.57 },
        name = 'csb_car3guy1',
        blocking = true,
        invincible = true,
        freeze = true,
        icon = 'fa-solid fa-car-side',
        titre = 'Location de voiture',
        distance = 2.5,
        menu = 2,
        blip = {
            sprite = 464,
            scale = 0.8,
            colour = 11,
            name = "Location de véhicule",
        },
    },
}

Config.vehicule = {
    {
        label = "Sultan", -- Nom du menu
        vehicule = "sultan", -- nom du véhicule
        description = "Vous pouvez louer une sultan pour : 20$", -- Descritption du menu
        prix = 20, -- Prix du véhicule
        image = "https://cdn.discordapp.com/attachments/1116084412233289758/1243256276289327195/sultan.png?ex=6650d022&is=664f7ea2&hm=6529f698fa8282866cc2bdf89b2f77f36698b84376d822d1918dcaf265237de1&", -- Image du véhicule
    },
    {
        label = "Terminus",
        vehicule = "terminus",
        description = "Vous pouvez louer un terminus pour : 300$",
        prix = 300,
        image = "https://cdn.discordapp.com/attachments/1116084412233289758/1243256226054410312/terminus.png?ex=6650d016&is=664f7e96&hm=7e35678d7e4a40af40a683372276ba1153288d9c5e49802716c10e3ef7403367&",
    }
}

Config.posvehicule = {
    [1] = {
        posspawn = { x = -228.15, y = -888.52, z = 29.92, h = 249.44 }, -- Position de spawn du véhicule
        tempsfinlocation = 0, -- A quelle moment le temps de location s'arrète en seconde
        tempslocation = 30, -- Temps de location en seconde
        nombre = 1, -- -- Numéro du menu a mettre le même avec le nombre haut pour relier les 2
    },
    [2] = {
        posspawn = { x = 150.36, y = -1004.36, z = 29.33, h = 70.86 },
        tempsfinlocation = 0,
        tempslocation = 30,
        nombre = 2,
    },
}
