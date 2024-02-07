Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.MaxInventoryWeight = 160000 -- Max weight a player can carry (default 120kg, written in grams)
Config.MaxInventorySlots = 18 -- Max inventory slots for a player

Config.CleanupDropTime = 15 * 60 -- How many seconds it takes for drops to be untouched before being deleted
Config.MaxDropViewDistance = 12.5 -- The distance in GTA Units that a drop can be seen
Config.UseItemDrop = false -- This will enable item object to spawn on drops instead of markers
Config.ItemDropObject = `sf_prop_sf_backpack_01a` -- if Config.UseItemDrop is true, this will be the prop that spawns for the item

Config.Progressbar = {
    Enable = false,         -- True to Enable the progressbar while opening inventory
    minT = 350,             -- Min Time for Inventory to open
    maxT = 500              -- Max Time for Inventory to open
}

Config.VendingObjects = {
    "prop_vend_soda_01",
    "prop_vend_soda_02",
    "prop_vend_water_01"
}

Config.BinObjects = {
    "prop_bin_05a",
}

Config.CraftingObject = `prop_toolchest_05` -- Only needed if not using target | Line 928 to change Target Models

Config.VendingItem = {
    [1] = {
        name = "kurkakola",
        price = 4,
        amount = 50,
        info = {},
        type = "item",
        slot = 1,
    },
    [2] = {
        name = "water_bottle",
        price = 4,
        amount = 50,
        info = {},
        type = "item",
        slot = 2,
    },
}

Config.CraftingItems = {
    [1] = {
        name = "lockpick",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 22,
            ["plastic"] = 32,
        },
        type = "item",
        slot = 1,
        threshold = 0,
        points = 1,
    },
    [2] = {
        name = "screwdriverset",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 30,
            ["plastic"] = 42,
        },
        type = "item",
        slot = 2,
        threshold = 0,
        points = 2,
    },
    [3] = {
        name = "electronickit",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 30,
            ["plastic"] = 45,
            ["aluminum"] = 28,
        },
        type = "item",
        slot = 3,
        threshold = 0,
        points = 3,
    },
    [4] = {
        name = "radioscanner",
        amount = 50,
        info = {},
        costs = {
            ["electronickit"] = 2,
            ["plastic"] = 52,
            ["steel"] = 40,
        },
        type = "item",
        slot = 4,
        threshold = 0,
        points = 4,
    },
    [5] = {
        name = "gatecrack",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 10,
            ["plastic"] = 50,
            ["aluminum"] = 30,
            ["iron"] = 17,
            ["electronickit"] = 2,
        },
        type = "item",
        slot = 5,
        threshold = 110,
        points = 5,
    },
    [6] = {
        name = "handcuffs",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 36,
            ["steel"] = 24,
            ["aluminum"] = 28,
        },
        type = "item",
        slot = 6,
        threshold = 160,
        points = 6,
    },
    [7] = {
        name = "repairkit",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 32,
            ["steel"] = 43,
            ["plastic"] = 61,
        },
        type = "item",
        slot = 7,
        threshold = 200,
        points = 7,
    },
    [8] = {
        name = "pistol_ammo",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 50,
            ["steel"] = 37,
            ["copper"] = 26,
        },
        type = "item",
        slot = 8,
        threshold = 250,
        points = 8,
    },
    [9] = {
        name = "ironoxide",
        amount = 50,
        info = {},
        costs = {
            ["iron"] = 60,
            ["glass"] = 30,
        },
        type = "item",
        slot = 9,
        threshold = 300,
        points = 9,
    },
    [10] = {
        name = "aluminumoxide",
        amount = 50,
        info = {},
        costs = {
            ["aluminum"] = 60,
            ["glass"] = 30,
        },
        type = "item",
        slot = 10,
        threshold = 300,
        points = 10,
    },
    [11] = {
        name = "armor",
        amount = 50,
        info = {},
        costs = {
            ["iron"] = 33,
            ["steel"] = 44,
            ["plastic"] = 55,
            ["aluminum"] = 22,
        },
        type = "item",
        slot = 11,
        threshold = 350,
        points = 11,
    },
    [12] = {
        name = "drill",
        amount = 50,
        info = {},
        costs = {
            ["iron"] = 50,
            ["steel"] = 50,
            ["screwdriverset"] = 3,
            ["advancedlockpick"] = 2,
        },
        type = "item",
        slot = 12,
        threshold = 1750,
        points = 12,
    },
}

Config.AttachmentCraftingLocation = vector3(88.91, 3743.88, 40.77) -- Only needed if not using target

Config.AttachmentCrafting = {
    [1] = {
        name = "pistol_extendedclip",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 140,
            ["steel"] = 250,
            ["rubber"] = 60,
        },
        type = "item",
        slot = 1,
        threshold = 0,
        points = 1,
    },
    [2] = {
        name = "pistol_suppressor",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 165,
            ["steel"] = 285,
            ["rubber"] = 75,
        },
        type = "item",
        slot = 2,
        threshold = 10,
        points = 2,
    },
    [3] = {
        name = "smg_extendedclip",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 190,
            ["steel"] = 305,
            ["rubber"] = 85,
        },
        type = "item",
        slot = 3,
        threshold = 25,
        points = 3,
    },
    [4] = {
        name = "microsmg_extendedclip",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 205,
            ["steel"] = 340,
            ["rubber"] = 110,
        },
        type = "item",
        slot = 4,
        threshold = 50,
        points = 4,
    },
    [5] = {
        name = "smg_drum",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 230,
            ["steel"] = 365,
            ["rubber"] = 130,
        },
        type = "item",
        slot = 5,
        threshold = 75,
        points = 5,
    },
    [6] = {
        name = "smg_scope",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 255,
            ["steel"] = 390,
            ["rubber"] = 145,
        },
        type = "item",
        slot = 6,
        threshold = 100,
        points = 6,
    },
    [7] = {
        name = "assaultrifle_extendedclip",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 270,
            ["steel"] = 435,
            ["rubber"] = 155,
            ["smg_extendedclip"] = 1,
        },
        type = "item",
        slot = 7,
        threshold = 150,
        points = 7,
    },
    [8] = {
        name = "assaultrifle_drum",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 300,
            ["steel"] = 469,
            ["rubber"] = 170,
            ["smg_extendedclip"] = 2,
        },
        type = "item",
        slot = 8,
        threshold = 200,
        points = 8,
    },
}

BackEngineVehicles = {
    [`ninef`] = true,
    [`adder`] = true,
    [`vagner`] = true,
    [`t20`] = true,
    [`infernus`] = true,
    [`zentorno`] = true,
    [`reaper`] = true,
    [`comet2`] = true,
    [`comet3`] = true,
    [`jester`] = true,
    [`jester2`] = true,
    [`cheetah`] = true,
    [`cheetah2`] = true,
    [`prototipo`] = true,
    [`turismor`] = true,
    [`pfister811`] = true,
    [`ardent`] = true,
    [`nero`] = true,
    [`nero2`] = true,
    [`tempesta`] = true,
    [`vacca`] = true,
    [`bullet`] = true,
    [`osiris`] = true,
    [`entityxf`] = true,
    [`turismo2`] = true,
    [`fmj`] = true,
    [`re7b`] = true,
    [`tyrus`] = true,
    [`italigtb`] = true,
    [`penetrator`] = true,
    [`monroe`] = true,
    [`ninef2`] = true,
    [`stingergt`] = true,
    [`surfer`] = true,
    [`surfer2`] = true,
    [`gp1`] = true,
    [`autarch`] = true,
    [`tyrant`] = true
}

Config.MaximumAmmoValues = {
    ["pistol"] = 250,
    ["smg"] = 250,
    ["shotgun"] = 200,
    ["rifle"] = 250,
}

Config.DropItems = {
    weed_skunk = `prop_stockade_wheel_flat`,
    lockpick = `v_res_tre_plant`,
    jerry_can = `prop_jerrycan_01a`,


      --Slagvåpen
      weapon_dagger = `prop_w_me_dagger`,
      weapon_bat = `p_cs_bbbat_01`,
      weapon_bottle = `prop_w_me_bottle`,
      weapon_crowbar = `prop_ing_crowbar`,
    --   weapon_flashlight = `w_pi_pistol_mag1`,
    weapon_golfclub = `prop_golf_iron_01`,
    weapon_hammer = `prop_tool_hammer`,
    weapon_hatchet = `prop_w_me_hatchet`,
    -- weapon_knuckle = `w_pi_pistol_mag1`,
    weapon_knife = `prop_cs_bowie_knife`,
    weapon_machete = `prop_ld_w_me_machette`,
    -- weapon_switchblade = `w_pi_pistol_mag1`,
    weapon_nightstick = `w_me_nightstick`,
    weapon_wrench = `prop_tool_wrench`,
    weapon_battleaxe = `prop_tool_fireaxe`,
    weapon_poolcue = `prop_pool_cue`,
    weapon_briefcase = `prop_security_case_01`,
    weapon_briefcase_02 = `prop_security_case_01`,
    weapon_garbagebag = `prop_rub_binbag_sd_01`,
    weapon_handcuffs = `prop_cs_cuffs_01`,
    weapon_bread = `v_ret_247_bread1`,

    --handguns
    weapon_pistol = `w_pi_combatpistol_luxe`,
    weapon_pistol_mk2 = `weapon_pistol_mk2`,
    weapon_combatpistol = `w_pi_combatpistol`,
    weapon_stungun = `w_pi_stungun`,
    weapon_pistol50 = `w_pi_pistol50`,
    weapon_snspistol = `w_pi_sns_pistol`,
    weapon_heavypistol = `w_pi_heavypistol`,
    weapon_vintagepistol = `w_pi_vintage_pistol`,
    weapon_revolver = `w_pi_heavypistol`,
    
    --submachine guns
    weapon_microsmg = `w_sb_microsmg`,
    weapon_smg = `w_sb_smg`,
    weapon_smg_mk2 = `w_sb_smg`,
    weapon_assaultsmg = `w_sb_smg`,
    weapon_combatpdw = `w_sb_smg`,
    weapon_machinepistol = `w_pi_appistol`,
    weapon_minismg = `w_sb_smg`,
   
    --shotguns
    weapon_pumpshotgun = `w_sg_pumpshotgun`,
    weapon_sawnoffshotgun = `w_sg_sawnoff`,
    weapon_musket = `w_ar_musket`,
    weapon_dbshotgun = `w_sg_pumpshotgun`,

      -- AR
      weapon_assaultrifle = `w_ar_assaultrifle`,
      weapon_assaultrifle_mk2 = `w_ar_assaultrifle`,
      weapon_carbinerifle = `w_ar_carbinerifle`,
      weapon_carbinerifle_mk2 = `w_ar_carbinerifle`,
      weapon_advancedrifle = `w_ar_advancedrifle`,
      weapon_specialcarbine = `w_ar_specialcarbine`,
      weapon_bullpuprifle = `w_ar_bullpuprifle`,


      --random weapon
      weapon_petrolcan = `prop_jerrycan_01a`,


      -- Ammo
      pistol_ammo = `w_pi_pistol_mag1`,
      rifle_ammo =    `w_ar_assaultrifle_mag1`,
      smg_ammo =   `w_sb_assaultsmg_mag2`,
      shotgun_ammo = `w_sg_assaultshotgun_mag1`,
      mg_ammo =  `prop_box_ammo01a`,
      snp_ammo  =  `prop_box_ammo01a`,
      
      
      -- Pistol Attachments
      pistol_defaultclip = `w_pi_sns_pistol_mag1`,
      pistol_extendedclip = `w_pi_sns_pistol_mag1`,
    --   pistol_flashlight = `w_pi_sns_pistol_mag1`,
    pistol_suppressor = `w_at_pi_supp`,
    pistol_luxuryfinish = `prop_paints_can05`,
    combatpistol_defaultclip = `w_pi_sns_pistol_mag1`,
    combatpistol_extendedclip = `w_pi_sns_pistol_mag1`,
    combatpistol_luxuryfinish = `prop_paints_can05`,
    appistol_defaultclip = `w_pi_sns_pistol_mag1`,
    appistol_extendedclip = `w_pi_sns_pistol_mag1`,
    appistol_luxuryfinish = `prop_paints_can05`,
    pistol50_defaultclip = `w_pi_sns_pistol_mag1`,
    pistol50_extendedclip = `w_pi_sns_pistol_mag1`,
    pistol50_luxuryfinish = `prop_paints_can05`,
    revolver_defaultclip = `w_pi_sns_pistol_mag1`,
    snspistol_defaultclip = `w_pi_sns_pistol_mag1`,
    snspistol_extendedclip = `w_pi_sns_pistol_mag1`,
    snspistol_grip = `w_at_ar_afgrip`,
    heavypistol_defaultclip = `w_pi_sns_pistol_mag1`,
    heavypistol_extendedclip = `w_pi_sns_pistol_mag1`,
    heavypistol_grip = `w_at_ar_afgrip`,
    vintagepistol_defaultclip = `w_pi_sns_pistol_mag1`,
    vintagepistol_extendedclip = `w_pi_sns_pistol_mag1`,

    --SMG attachments
    microsmg_defaultclip = `w_pi_sns_pistol_mag1`,
    microsmg_extendedclip = `w_pi_sns_pistol_mag1`,
    microsmg_scope = `w_at_scope_medium`,
    microsmg_luxuryfinish = `prop_paints_can05`,
    smg_defaultclip = `w_pi_sns_pistol_mag1`,
    smg_extendedclip = `w_pi_sns_pistol_mag1`,
    smg_suppressor = `w_pi_sns_pistol_mag1`,
    smg_drum = `w_mg_mg_mag1`,
    smg_scope = `w_at_scope_medium`,
    smg_luxuryfinish = `prop_paints_can05`,
    assaultsmg_defaultclip = `w_pi_sns_pistol_mag1`,
    assaultsmg_extendedclip = `w_pi_sns_pistol_mag1`,
    assaultsmg_luxuryfinish = `prop_paints_can05`,
    machinepistol_defaultclip = `w_pi_sns_pistol_mag1`,
    machinepistol_extendedclip = `w_pi_sns_pistol_mag1`,
    machinepistol_drum = `w_mg_mg_mag1`,
    combatpdw_defaultclip = `w_pi_sns_pistol_mag1`,
    combatpdw_extendedclip = `w_pi_sns_pistol_mag1`,
    combatpdw_drum = `w_mg_mg_mag1`,
    combatpdw_grip = `w_at_ar_afgrip`,
    combatpdw_scope = `w_at_scope_medium`,

    -- RIFLE ATTACHMENTS
    assaultrifle_defaultclip = `w_ar_specialcarbine_mag2`,
    assaultrifle_extendedclip = `w_ar_specialcarbine_mag2`,
    assaultrifle_drum = `w_mg_mg_mag1`,
    rifle_grip = `w_at_ar_afgrip`,
    rifle_suppressor = `w_at_ar_supp`,
    assaultrifle_luxuryfinish = `prop_paints_can05`,
    carbinerifle_defaultclip = `w_ar_specialcarbine_mag2`,
    carbinerifle_extendedclip = `w_ar_specialcarbine_mag2`,
    carbinerifle_drum = `w_mg_mg_mag1`,
    carbinerifle_scope = `w_at_scope_medium`,
    carbinerifle_luxuryfinish = `prop_paints_can05`,
    combatpdw_scope = `w_at_scope_medium`,
    combatpdw_scope = `w_at_scope_medium`,

      -- sniper
      weapon_sniperrifle = `w_sr_sniperrifle`,
      weapon_heavysniper = `w_sr_heavysniper`,
      weapon_marksmanrifle = `w_sr_marksmanrifle`,
      weapon_heavysniper_mk2 = `w_sr_heavysniper`,
      weapon_marksmanrifle_mk2 = `w_sr_marksmanrifle`,
      
      -- Thorwable
      weapon_molotov = `w_ex_molotov`,
      weapon_grenade = `w_ex_grenadefrag`,
      weapon_smokegrenade = `w_ex_grenadesmoke`,
      
      -- mat
      tosti = `prop_sandwich_01`,
      twerks_candy = `ng_proc_candy01a`,
      sandwich = `prop_sandwich_01`,
      
      -- drikke
      water_bottle = `prop_ld_flow_bottle`,
      coffee = `p_amb_coffeecup_01`,
      kurkakola = `ng_proc_sodacan_01a`,
      ecola = `ng_proc_sodacan_01a`,
      ecola = `sprunk`,
      
      -- alkohol
      beer = `prop_prop_beer_pissh`,
      whiskey = `prop_bottle_richard`,
      vodka = `prop_vodka_bottle`,
      wine = `prop_wine_bot_01`,
      grapejuice = `prop_food_bs_juice03`,

      -- ID
      id_card = `p_ld_id_card_002`,
      driver_license = `prop_cs_swipe_card`,
      security_card_01 = `prop_cs_r_business_card`,
      security_card_02 = `prop_cs_r_business_card`,

      -- drugs
      weed_skunk = `prop_weed_bottle`,
      cokebaggy = `prop_meth_bag_01`,
      meth = `prop_meth_bag_01`,
      joint = `p_amb_joint_01`,
      cigar = `prop_sh_cigar_01`,
      rolling_paper = `p_cs_papers_01`,
      cigarette = `prop_cs_ciggy_01b`,

      --materials
      plastic = `prop_cs_cardbox_01`,
      metalscrap = `prop_cs_cardbox_01`,
      copper = `prop_cs_cardbox_01`,
      aluminum = `prop_cs_cardbox_01`,
      aluminumoxide = `prop_cs_cardbox_01`,
      iron = `prop_cs_cardbox_01`,
      ironoxide = `prop_cs_cardbox_01`,
      steel = `prop_cs_cardbox_01`,
      rubber = `prop_cs_cardbox_01`,
      glass = `prop_cs_cardbox_01`,
      cloth = `prop_cs_cardbox_01`,

      --tools
      lockpick = `prop_tool_screwdvr03`,
      advancedlockpick = `prop_tool_screwdvr03`,
      electronickit = `hei_prop_hst_usb_drive`,
      gatecrack = `hei_prop_hst_usb_drive`,
      thermite = `hei_prop_heist_thermite`,
      trojan_usb = `hei_prop_hst_usb_drive`,
      screwdriverset = `prop_tool_screwdvr03`,
      drill = `prop_tool_drill`,
      laserdrill = `hei_prop_heist_drill`,


       --vehicle tools
       repairkit = `prop_tool_box_06`,
       advancedrepairkit = `prop_tool_box_06`,
       cleaningkit = `prop_rag_01`,
       jerry_can = `w_am_jerrycan`,
   
       -- Medication
       firstaid = `prop_cs_pills`,
       bandage = `prop_cs_pills`,
       ifaks = `prop_cs_pills`,
       painkillers = `prop_cs_pills`,
       walkstick = `prop_cs_walking_stick`,

       -- Communication

       phone = `lb_phone_prop`,
       radio = `prop_cs_walkie_talkie`,
    
       -- Theft and Jewelry
       rolex = `p_watch_04`,
       diamond_ring = `prop_jewel_03b`,
       goldchain = `p_jewel_necklace01_s`,
       goldbar = `hei_prop_heist_gold_bar`,
       radio = `prop_cs_walkie_talkie`,
       radio = `prop_cs_walkie_talkie`,

       -- Cops Tools
       armor = `prop_bodyarmour_03`,
       heavyarmor = `prop_bodyarmour_03`,
       empty_evidence_bag = `prop_meth_bag_01`,
       filled_evidence_bag = `prop_meth_bag_01`,

       -- Other Tools
       stickynote = `p_notepad_01_s`,
       parachute = `p_parachute_s`,
       binoculars = `prop_binoc_01`,
       lighter = `p_cs_lighter_01`,
       markertesedler = `prop_anim_cash_pile_01`,


       -- Ransutstyr
       juvelen_bakrom = `prop_cs_r_business_card`,
       robbery_keycard_01 = `prop_cs_r_business_card`,
       robbery_keycard_02 = `prop_cs_r_business_card`,
       robbery_keycard_03 = `prop_cs_r_business_card`,
       robbery_keycard_04 = `prop_cs_r_business_card`,
       robbery_keycard_05 = `prop_cs_r_business_card`,
       robbery_keycard_06 = `prop_cs_r_business_card`,
       robbery_keycard_07 = `prop_cs_r_business_card`,

       -- jaksam
       doors_lockpick = `prop_tool_screwdvr03`,
       storbank_kort = `prop_cs_r_business_card`,
       hvelv_kort = `prop_cs_r_business_card`,
       eksplosiv = `prop_bomb_01`,

       -- Random
       cups = `prop_plastic_cup_02`,
       contract = `prop_cd_paper_pile3`,
       flyid = `prop_cs_swipe_card`,
       hacker_phone = `lb_phone_prop`,
       dogfood = `prop_paper_bag_01`,
       catfood = `prop_paper_bag_01`,
       chickenfood = `prop_paper_bag_01`,
       rentalpapers = `prop_cd_paper_pile3`,
       boombox = `prop_boombox_01`,
       security_card_03 = `prop_cs_r_business_card`,
       security_card_04 = `prop_cs_r_business_card`,
       spray = `prop_spraygun_01`,
       spray = `prop_rag_01`,

       --kq
       kq_outfitbag = `prop_cs_heist_bag_01`,

       towing_rope = `prop_trevor_rope_01`,

      -- sykehus
      crutch = `prop_cs_walking_stick`,
      wheelchair = `prop_wheelchair_01`,

      -- houserobbery
      powder = `prop_meth_bag_01`,
      watch = `p_watch_04`,
      toothpaste = `prop_toothpaste_01`,
      soap = `prop_toilet_soap_01`,
      shampoo = `prop_toilet_shamp_01`,
      romantic_book = `prop_cs_stock_book`,
      pencil = `prop_pencil_01`,
      notepad = `p_notepad_01_s`,
      necklace = `p_jewel_necklace01_s`,
      house_locator = `hei_prop_hst_usb_drive`,
      gold_watch = `p_watch_06`,
      gold_bracelet = `prop_jewel_03a`,
      earings = `p_tmom_earrings_s`,
      book = `prop_cs_stock_book`,
      bracelet = `prop_jewel_03a`,
      sculpture = `prop_toiletfoot_static`,
      j_phone = `lb_phone_prop`,
      tapeplayer = `prop_boombox_01`,
      coffemachine = `prop_coffee_mac_02`,
      bong = `prop_bong_01`,
      boombox = `prop_boombox_01`,
      console = `prop_console_01`,
      dj_deck = `prop_dj_deck_02`,
      shoebox = `prop_cs_cardbox_01`,
      fan = `prop_fan_01`,
      radio_alarm = `v_res_fa_radioalrm`,
      flat_television = `prop_tv_flat_michael`,
      television = `prop_tv_05`,
      monitor = `prop_monitor_w_large`,
      npc_phone = `lb_phone_prop`,
      printer = `prop_printer_02`,
      laptop = `prop_laptop_02_closed`,
      loot_bag = `prop_cs_heist_bag_01`,
      hack_laptop = `prop_laptop_02_closed`,
      toiletry = `prop_toilet_brush_01`,
      skull = `p_jewel_pickup33_s`,

      -- mask
      mask = `prop_mask_test_01`,
 
      --falsk legg
      info_usb = `hei_prop_hst_usb_drive`,
      clean_card = `p_ld_id_card_002`,


        --jaksam robberies creator
        hacking_computer = `prop_laptop_02_closed`,
        thermal_charge = `hei_prop_heist_thermite`,
        gas_mask = `prop_mask_test_01`,
        drill = `prop_tool_drill`,
        gold_ingot = `hei_prop_heist_gold_bar`,


        -- KamaKaZibO
        tablet = `prop_cs_tablet_02`,

        --tequilala
        appledrink = `prop_drink_whisky`,
        bananadrink = `prop_drink_whisky`,
        orangedrink = `prop_drink_whisky`,
        whiterum = `prop_drink_whisky`,
        brandy = `prop_drink_whisky`,
        wine_white = `prop_drink_whtwine`,
        wine_rose = `prop_drink_whtwine`,
        wine_red = `prop_drink_redwine`,
        tequila = `prop_drink_whtwine`,
        whiskey_richards = `prop_drink_whisky`,
        whiskey_macbeth = `prop_drink_whisky`,
        whiskey_mount = `prop_drink_whisky`,
        hamburger = `prop_cs_burger_01`,
        cheeseburger = `prop_cs_burger_01`,
        steak = `prop_cs_steak`,
        kiwi = `prop_bar_fruit`,
        sugar = `prop_food_sugarjar`,
        watermelon = `prop_bar_fruit`,
        banana = `prop_bar_fruit`,
        coconut = `prop_bar_fruit`,
        strawberry = `prop_bar_fruit`,
        apple = `prop_bar_fruit`,
        orange = `prop_bar_fruit`,
        daquiri = `prop_bar_fruit`,
        tracker = `hei_prop_hst_usb_drive`,

        -- ps-drugprocessing
        methtray = `prop_chem_vial_02`,
        coke = `prop_coke_block_01`,
        marijuana = `prop_weed_02`,

        -- GGC Custom Weapons -- Melees
        weapon_katana = `w_me_katana`,
        weapon_shiv = `w_me_shiv`,
        weapon_sledgehammer = `prop_tool_sledgeham`,
        weapon_karambit = `w_me_karambit`,
        weapon_keyboard = `w_me_keyboard`,

        -- GGC Custom Weapons -- Hand Guns
        weapon_glock17 = `w_pi_glock17_luxe`,
        weapon_glock18c = `w_pi_glock18c`,
        weapon_glock22 = `w_pi_glock22`,
        weapon_deagle = `deserteagle`,
        weapon_fnx45 = `w_pi_fnx45`,
        weapon_m1911 = `w_pi_m1911`,
        weapon_glock20 = `glock20`,
        weapon_glock19gen4 = `glock19gen4`,

          -- GGC Custom Weapons -- SMGs
          weapon_pmxfm = `pmx`,
          weapon_mac10 = `w_sb_mac10`,

          -- GGC Custom Weapons -- Rifles
          weapon_mk47fm = `MK47FluffysMods`,
          weapon_m6ic = `m6ic`,
          weapon_scarsc = `scarsc`,
          weapon_m4 = `w_ar_m4`,
          weapon_ak47 = `w_ar_ak47`,
          weapon_ak74 = `w_ar_ak74`,
          weapon_aks74 = `w_ar_assaultrifle_aks74`,
          weapon_groza = `w_ar_groza`,
          weapon_scarh = `w_ar_scarh`,

          -- Airsoft
          weapon_airsoftak47 = `airsoftak`,
          weapon_airsoftg36c = `airsoftg36`,
          weapon_airsoftglock20 = `airsoftglock20`,
          weapon_airsoftm4 = `airsoftm4a1`,
          weapon_airsoftm249 = `airsoftm249`,
          weapon_airsoftmicrouzi = `airsoftmicrouzi`,
          weapon_airsoftmp5 = `airsoftmp5`,
          weapon_airsoftr700 = `airsoftr700`,
          weapon_airsoftr870 = `airsoft870`,


          --R14 police
          nikon = `prop_pap_camera_01`,
          microfibercloth = `prop_rag_01`,

          basketball = `prop_bskball_01`,
          basketball_hoop = `stt_prop_hoop_small_01`,

          teddy = `v_ilev_mr_rasberryclean`,
          bunch_of_flowers = `prop_snow_flower_02`,
          rose = `prop_single_rose`,

          smalltv = `prop_tv_01`,
          mediumtv = `prop_tv_flat_03b`,
          bigtv = `prop_tv_flat_michael`,
}
