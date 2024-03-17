-- crap sorted the same way as vanilla's define categories.
-- ## NGame ##
NDefines.NGame.LAG_DAYS_FOR_LOWER_SPEED = 30 -- 10 Vanilla Lag days
NDefines.NGame.LAG_DAYS_FOR_PAUSE = 90 -- pause days
-- NDefines.NGame.GAME_SPEED_SECONDS = { 2.0, 0.10, 0.05, 0.035, 0 } -- game secs

-- ## NDiplomacy ##
NDefines.NDiplomacy.MIN_WARGOAL_JUSTIFY_COST = 6.0 --It always takes atleast 10 days to justify a wargoal
NDefines.NDiplomacy.VOLUNTEERS_PER_COUNTRY_ARMY = 0.05 --Each province owned by the target country contributes this amount of volunteers to the limit.
NDefines.NDiplomacy.VOLUNTEERS_PER_TARGET_PROVINCE = 0.025 --Each army unit owned by the source country contributes this amount of volunteers to the limit.
NDefines.NDiplomacy.GUARANTEE_COST = 75 
NDefines.NDiplomacy.EMBARGO_COST = 50

-- ## NCountry ##
NDefines.NCountry.ARMY_COUNT_DAILY_DECREASE_FOR_TRAINING_XP = 0.05 -- number of armies that is used in training xp calculates daily linearly approaches this number (if real number is lower)
NDefines.NCountry.STARTING_FUEL_RATIO = 1	-- starting fuel ratio compared to max fuel for countries, set to 1 to avoid countries stockpiling day 0 then the entire oil trade dying soon after.
NDefines.NCountry.BASE_FUEL_GAIN = 10.0 -- upped to 10, for industrial oil use. allows for 12 "free" factories before having to import foreign oil.
NDefines.NCountry.BASE_FUEL_GAIN_PER_OIL = 4 -- (vanilla = 2)
NDefines.NCountry.BASE_FUEL_CAPACITY = 150000

-- ## NProduction ##
NDefines.NProduction.BASE_FACTORY_SPEED_NAV = 5 --VANILLA - 2.5
NDefines.NProduction.DEFAULT_MAX_NAV_FACTORIES_PER_LINE = 10
NDefines.NProduction.CONVOY_MAX_NAV_FACTORIES_PER_LINE = 15
NDefines.NProduction.CAPITAL_SHIP_MAX_NAV_FACTORIES_PER_LINE = 10

-- ## NTechnology ##
NDefines.NTechnology.BASE_RESEARCH_POINTS_SAVED = 50 --BASE_RESEARCH_POINTS_SAVED

-- ## NMilitary ##
NDefines.NMilitary.BASE_CAPTURE_EQUIPMENT_RATIO = 0.025
NDefines.NMilitary.COMMANDER_LEVEL_UP_STAT_WEIGHTS = {3, 4, 3, 4} --less likley to level up attack. fuck your meta.
NDefines.NMilitary.NAVY_LEADER_LEVEL_UP_STAT_WEIGHTS = {3, 4, 3, 4} --less likley to level up attack. fuck your meta.

-- ## NSupply ##
NDefines.NSupply.FLOATING_HARBOR_BASE_SUPPLY = 10.0
NDefines.NSupply.FLOATING_HARBOR_BASE_DURATION = 14

-- ## NAir ##
NDefines.NAir.MISSION_COMMAND_POWER_COSTS = { -- command power cost per plane to create a mission
	0.0, -- AIR_SUPERIORITY
	0.0, -- CAS
	0.0, -- INTERCEPTION
	0.0, -- STRATEGIC_BOMBER
	0.0, -- NAVAL_BOMBER
	0.0, -- DROP_NUKE
	0.0, -- PARADROP
	0.0, -- NAVAL_KAMIKAZE
	0.0, -- PORT_STRIKE
	0.055, -- ATTACK_LOGISTICS
	0.025, -- AIR_SUPPLY --Was 0.05
	0.0, -- TRAINING
	0.0, -- NAVAL_MINES_PLANTING
	0.0, -- NAVAL_MINES_SWEEPING
	0.0, -- MISSION_RECON
	0.0, -- NAVAL_PATROL
}
NDefines.NAir.MISSION_FUEL_COSTS = {  -- CHECK ROAD fuel cost per plane for each mission
		1.0, -- AIR_SUPERIORITY
		1.0, -- CAS
		0.2, -- INTERCEPTION
		1.0, -- STRATEGIC_BOMBER
		1.0, -- NAVAL_BOMBER
		1.0, -- DROP_NUKE
		1.0, -- PARADROP
		0.75, -- NAVAL_KAMIKAZE
		1.2, -- PORT_STRIKE
		1.2, -- ATTACK_LOGISTICS
		1.0, -- AIR_SUPPLY
		0.5, -- TRAINING (vanilla 0.6)
		1.0, -- NAVAL_MINES_PLANTING
		1.0, -- NAVAL_MINES_SWEEPING
		1.0, -- RECON
		1.0, -- NAVAL_PATROL
	}

-- ### NNavy ##
NDefines.NNavy.GUN_HIT_PROFILES = { -- hit profiles for guns, if target ih profile is lower the gun will have lower accuracy
	65.0,	-- big guns -- 80 vanilla
	100.0,	-- torpedoes
	60.0,	-- small guns -- 45 vanilla -- hehehe warlider was here
}
NDefines.NNavy.NAVAL_INVASION_PRIORITY = 1
NDefines.NNavy.NAVAL_TRANSFER_PRIORITY = 1
NDefines.NNavy.SUPPLY_PRIORITY = 2
NDefines.NNavy.RESOURCE_EXPORT_PRIORITY = 3
NDefines.NNavy.RESOURCE_ORIGIN_PRIORITY = 4
NDefines.NNavy.RESOURCE_PURCHASE_PRIORITY = 5
NDefines.NNavy.RESOURCE_LENDLEASE_PRIORITY = 6 -- vanilla 3
NDefines.NNavy.SUBMARINE_ESCAPE_RATIOS = { -- subs will escape battle in convoy raid if there are enemies that can attack
	500,    -- do not engage (vanilla 1000)
	15,    -- low
	3.0,   -- medium
	1.5,   -- high (vanilla 1)
	1.0,   -- I am death incarnate! (vanilla 0.1)
}
NDefines.NNavy.CARRIER_ONLY_COMBAT_ACTIVATE_TIME = 0 -- vanilla 0
NDefines.NNavy.CAPITAL_ONLY_COMBAT_ACTIVATE_TIME = 6 -- vanilla 6
NDefines.NNavy.ALL_SHIPS_ACTIVATE_TIME = 10 -- vanilla 8. This gives capital ships more time to fire increasing thier importance.

-- ## NAI ##
NDefines.NAI.GARRISON_FRACTION = 0.2 -- 20% of the troops will NOT push the enemy while advancing. will make it harder to punch trough ai lines

-- ## NFocus ##
NDefines.NFocus.MAX_SAVED_FOCUS_PROGRESS = 30 --This much progress can be saved while not having a focus selected