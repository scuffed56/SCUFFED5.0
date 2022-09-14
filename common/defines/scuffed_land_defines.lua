-- Thanks thrasy :)

NDefines.NMilitary.PLANNING_MAX = 0.30 -- Vanilla is 0.30 
NDefines.NMilitary.ORG_LOSS_FACTOR_ON_CONQUER = 0.2 -- 0.2

NDefines.NMilitary.MAX_NAVY_EXPERIENCE = 1000             -- WAS 500
NDefines.NMilitary.MAX_AIR_EXPERIENCE = 1000			   -- WAS 500
NDefines.NMilitary.MAX_ARMY_EXPERIENCE = 1000		   -- WAS 500

NDefines.NMilitary.LAND_EQUIPMENT_BASE_COST = 1					-- VANILLA 10 Cost in XP to upgrade a piece of equipment one level is base + ( total levels * ramp )
NDefines.NMilitary.LAND_EQUIPMENT_RAMP_COST = 0		 				-- VANILLA 5

NDefines.NMilitary.COMBAT_MINIMUM_TIME = 2                    --VANILLA 4; Changed so micro feels more fluid when cancelling

NDefines.NMilitary.UNIT_LEADER_MODIFIER_COOLDOWN_ON_GROUP_CHANGE = 3 -- WAS 15 | This prevents reassignment memes | This is the number of days it takes to REASSIGN a general. 

--faster training
NDefines.NMilitary.TRAINING_ATTRITION = 0.00
NDefines.NMilitary.UNIT_EXPERIENCE_PER_TRAINING_DAY = 0
NDefines.NMilitary.TRAINING_EXPERIENCE_SCALE = 62.0 -- 62 .0
NDefines.NMilitary.DEPLOY_TRAINING_MAX_LEVEL = 5 -- WAS 1 aka TRAINED | Since the above was changed there is no point to not allowing divs to be trained to regular considering that its only 10% stats now. 
NDefines.NProduction.MIN_POSSIBLE_TRAINING_MANPOWER = 15000000    -- Increased so most nations don't need to queue up multiple lines of infantry or spam 2w infantry and convert 

NDefines.NMilitary.CORPS_COMMANDER_DIVISIONS_CAP = 50 -- making this 0 breaks AI since AI can't create armies 
NDefines.NMilitary.FIELD_MARSHAL_DIVISIONS_CAP = 50

-- -- free templates
NDefines.NMilitary.BASE_DIVISION_BRIGADE_GROUP_COST = 0 -- 0xp, was 25
NDefines.NMilitary.BASE_DIVISION_BRIGADE_CHANGE_COST = 0 -- 0xp, was 5
NDefines.NMilitary.BASE_DIVISION_SUPPORT_SLOT_COST = 0 -- 0xp, was 10

NDefines.NCharacter.ADVISOR_PROMOTION_COST = 0

-- other
NDefines.NProduction.RAILWAY_GUN_MAX_MIL_FACTORIES_PER_LINE = 300
NDefines.NProduction.ANNEX_FIELD_EQUIPMENT_RATIO = 1	-- WAS 0.25 | Annex decisions should give all troops, but incase I screwed up here is this -Thrasymachus | How much equipment from deployed divisions will be transferred on annexation

-- Free Designs(uselesss for now)
NDefines.NProduction.EQUIPMENT_MODULE_ADD_XP_COST = 3				    -- XP cost for adding a new equipment module in an empty slot when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_REPLACE_XP_COST = 3				-- XP cost for replacing one equipment module with an unrelated module when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_CONVERT_XP_COST = 3				-- XP cost for converting one equipment module to a related module when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_REMOVE_XP_COST = 3

--More XP
NDefines.NMilitary.TRAINING_MAX_DAILY_COUNTRY_EXP = 0.16			-- (Def: 0.08)*2 | Maximum army XP gained per day from training
NDefines.NMilitary.UNIT_EXPERIENCE_PER_TRAINING_DAY = 0.00225       -- (Def: 0.0015 *1.5 | No official documentation)
NDefines.NAir.AIR_WING_COUNTRY_XP_FROM_TRAINING_FACTOR = 0.0075 	-- (Def: 0.005)*1.5 | Factor on country Air XP gained from wing training
NDefines.NNavy.TRAINING_DAILY_COUNTRY_EXP_FACTOR = 0.0015			-- (Def: 0.001)*1.5 |Factor used to scale the Daily Country Navy XP gain