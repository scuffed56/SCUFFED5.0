NDefines.NDiplomacy.DIPLOMACY_REQUEST_EXPIRY_DAYS = 30
NDefines.NDiplomacy.NUM_DAYS_TO_ENABLE_KICKING_NEW_MEMBERS_OF_FACTION = 1			-- Number of days before being able to kick a new member of faction
NDefines.NDiplomacy.NUM_DAYS_TO_ENABLE_REINVITE_KICKED_NATIONS = 1			-- Number of days before being able to re invite a kicked nation to your faction
NDefines.NDiplomacy.BASE_NEGATIVE_OPINION_AFTER_BEING_KICKED = 0				-- Negative opinion that will be received after kicking a nation
NDefines.NDiplomacy.DECAY_RATE_OF_NEGATIVE_OPINION_AFTER_BEING_KICKED = 1			-- Weekly decay rate of the negative opinion
NDefines.NDiplomacy.BASE_SEND_ATTACHE_COST = 0					-- Political power cost to send attache
NDefines.NDiplomacy.BASE_SEND_ATTACHE_CP_COST = 50.0				-- Command Power sent attache usage cost
NDefines.NDiplomacy.MIN_WARGOAL_JUSTIFY_COST = 7.0					-- It always takes atleast 10 days to justify a wargoal
NDefines.NDiplomacy.PEACE_SCORE_PER_PASS = 100.0
----------------------------------
NDefines.NCountry.EVENT_PROCESS_OFFSET = 30						-- Events are checked every X day per country or state (1 is ideal, but CPU heavy)
NDefines.NCountry.SPECIAL_FORCES_CAP_BASE = 0.2
NDefines.NCountry.SPECIAL_FORCES_CAP_MIN = 40
----------------------------------
NDefines.NProduction.EQUIPMENT_MODULE_ADD_XP_COST = 0					-- XP cost for adding a new equipment module in an empty slot when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_REPLACE_XP_COST = 0				-- XP cost for replacing one equipment module with an unrelated module when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_CONVERT_XP_COST = 0				-- XP cost for converting one equipment module to a related module when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_REMOVE_XP_COST = 0				-- XP cost for removing an equipment module and leaving the slot empty when creating an equipment variant.
NDefines.NProduction.MIN_POSSIBLE_TRAINING_MANPOWER = 15000000
NDefines.NProduction.DEFAULT_MAX_NAV_FACTORIES_PER_LINE = 30
NDefines.NProduction.CONVOY_MAX_NAV_FACTORIES_PER_LINE = 50
NDefines.NProduction.CAPITAL_SHIP_MAX_NAV_FACTORIES_PER_LINE = 30
NDefines.NProduction.RAILWAY_GUN_MAX_MIL_FACTORIES_PER_LINE = 10
----------------------------------
NDefines.NTechnology.MAX_SUBTECHS = 4						-- Max number of sub technologies a technology can have.
NDefines.NTechnology.BASE_RESEARCH_POINTS_SAVED = 30.0		-- Base amount of research points a country can save per slot.
NDefines.NTechnology.BASE_YEAR_AHEAD_PENALTY_FACTOR = 2.5		-- Base year ahead penalty
NDefines.NTechnology.BASE_TECH_COST = 80					-- Base cost for a tech. multiplied with tech cost and ahead of time penalties
----------------------------------
NDefines.NMilitary.CORPS_COMMANDER_DIVISIONS_CAP = 50
NDefines.NMilitary.FIELD_MARSHAL_DIVISIONS_CAP = 50
NDefines.NMilitary.BASE_DIVISION_BRIGADE_GROUP_COST = 0
NDefines.NMilitary.BASE_DIVISION_BRIGADE_CHANGE_COST = 0
NDefines.NMilitary.BASE_DIVISION_SUPPORT_SLOT_COST = 0
NDefines.NMilitary.MAX_ARMY_EXPERIENCE = 2000
NDefines.NMilitary.MAX_NAVY_EXPERIENCE = 2000
NDefines.NMilitary.MAX_AIR_EXPERIENCE = 2000
NDefines.NMilitary.TRAINING_MAX_LEVEL = 10
NDefines.NMilitary.DEPLOY_TRAINING_MAX_LEVEL = 5
NDefines.NMilitary.ARMY_EXP_BASE_LEVEL = 5
NDefines.NMilitary.UNIT_EXP_LEVELS = {0.02, 0.04, 0.06,	0.08, 0.1, 0.14, 0.18, 0.22, 0.26, 0.3, 0.39, 0.48, 0.57, 0.66, 0.75, 0.78, 0.81, 0.84, 0.87, 0.9}
NDefines.NMilitary.UNIT_EXPERIENCE_PER_TRAINING_DAY = 0.0015
NDefines.NMilitary.EXPERIENCE_COMBAT_FACTOR = 0.03
NDefines.NMilitary.NUKE_MIN_DAMAGE_PERCENT = 0.9
NDefines.NMilitary.NUKE_MAX_DAMAGE_PERCENT = 1.2
NDefines.NMilitary.RETREAT_SPEED_FACTOR = 0.15
----------------------------------
NDefines.NAir.AIR_WING_FLIGHT_SPEED_MULT = 0.2
NDefines.NAir.AIR_WING_XP_LEVELS = { 20, 40, 60, 80, 100, 140, 180, 220, 260, 300, 390, 480, 570, 660, 750, 780, 810, 840, 870, 900 }
NDefines.NAir.AIR_DEPLOYMENT_DAYS = 0
----------------------------------
NDefines.NNavy.SUPPLY_NEED_FACTOR = 0	
NDefines.NNavy.PRIDE_OF_THE_FLEET_UNASSIGN_COST = 0							-- cost to unassign/replace pride of the fleet
NDefines.NNavy.PRIDE_OF_THE_FLEET_LOST_TEMP_MODIFIER_DURATION = 180	
----------------------------------
NDefines.NFocus.MAX_SAVED_FOCUS_PROGRESS = 30
----------------------------------
NDefines.NBuildings.MAX_SHARED_SLOTS = 35