----------------------------------
NDefines.NAI.INDUSTRIAL_ORG_TRAIT_UNLOCK_RANDOMNESS = 3 -- AI will pick a random from N top traits when choosing a trait to unlock
NDefines.NAI.INDUSTRIAL_ORG_POLICY_CHANGE_RANDOMNESS = 3 -- AI will pick a random from N top policies when choosing a policy to attach to an MIO
NDefines.NAI.INDUSTRIAL_ORG_RESEARCH_ASSIGN_RANDOMNESS = 3 -- AI will pick a random from N top MIOs when choosing an MIO to assign to a research
NDefines.NAI.INDUSTRIAL_ORG_PRODUCTION_ASSIGN_RANDOMNESS = 3 -- AI will pick a random from N top MIOs when choosing an MIO to assign to a production line
NDefines.NAI.INDUSTRIAL_ORG_POLICY_CHANGE_SCALE = 1.0 -- Policy change weight will be scaled by this value
NDefines.NAI.INDUSTRIAL_ORG_TRAIT_RANK_FACTOR = 0.80 -- When precomputing weights, traits will affect the final score less the further down the tree they are, by this factor
NDefines.NAI.INDUSTRIAL_ORG_RESEARCH_BONUS_FACTOR = 1.0 -- Research bonus will be multiplied by this factor when evaluating design teams

-- ------------------------------------------------------------------------------------------------------------
-- RESEARCH
-- ------------------------------------------------------------------------------------------------------------
NDefines.NAI.RESEARCH_DAYS_BETWEEN_WEIGHT_UPDATE = 1
NDefines.NAI.RESEARCH_LAND_DOCTRINE_NEED_GAIN_FACTOR = 0	-- Multiplies value based on relative military industry size / country size.
NDefines.NAI.RESEARCH_NAVAL_DOCTRINE_NEED_GAIN_FACTOR = 0	-- Multiplies value based on relative naval industry size / country size.
NDefines.NAI.RESEARCH_AIR_DOCTRINE_NEED_GAIN_FACTOR = 0		-- Multiplies value based on relative number of air base / country size.

NDefines.NAI.MAX_AHEAD_RESEARCH_PENALTY = 1.3
NDefines.NAI.RESEARCH_NEW_WEIGHT_FACTOR = 0.5 			-- Impact of previously unexplored tech weights. Higher means more random exploration.
NDefines.NAI.RESEARCH_BONUS_FACTOR = 3 				-- To which extent AI should care about bonuses to research
NDefines.NAI.RESEARCH_AHEAD_OF_TIME_FACTOR = 2.0 		-- To which extent AI should care about ahead of time penalties to research
NDefines.NAI.RESEARCH_BASE_DAYS = 30					-- Vanilla 60 AI adds a base number of days when weighting completion time for techs to ensure it doesn't only research quick techs	
NDefines.NAI.XP_RATIO_REQUIRED_TO_RESEARCH_WITH_XP = 3.0

--------------------------------------------------------------------------------------------------------------
-- DESIGN
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.DEFAULT_LEGACY_VARIANT_CREATION_XP_CUTOFF_LAND = 199 --10	-- Army XP needed before attempting to create a variant of a type that uses the legacy upgrades system. ai_strategy supports land_xp_spend_priority upgrade_xp_cutoff. If none is set this define is used instead.
NDefines.NAI.DEFAULT_LEGACY_VARIANT_CREATION_XP_CUTOFF_NAVY = 49 --25	-- Same as above but for navy XP and navy_xp_spend_priority.
NDefines.NAI.DEFAULT_LEGACY_VARIANT_CREATION_XP_CUTOFF_AIR  = 199 --25	-- Same as above but for air XP and air_xp_spend_priority.

-- The AI uses the below values when selecting which design to make among the types that use the tank designer
-- (the tank designer DLC feature must be active). For each role the highest priority AI design that can be
-- created if any is assigned a weight. Any design with a weight of zero or a weight that falls below the
-- cutoff is dropped. A random design is then picked from the remaining.
-- Weight is calculated as AlternativeFactor * DemandFactor.
-- An "alternative" is a producible design of the same archetype (each specialized type is its own archetype).

-- EAI: AI delays upgrading the main tank types too much because it wants to create absent types for its templates first
-- makes sense but I'd rather have it get its most used type upgraded first
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_ABSENT = 1 --1000000
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_LESSER_TECH = 1 --10000
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_EQUAL_TECH = 1 --100
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_GREATER_TECH = 1

-- If a template may be reinforced with the archetype it's considered to be "demanded". If multiple conditions
-- are met e.g. it's both in the field and in training the largest value is used.

NDefines.NAI.LAND_DESIGN_DEMAND_FIELD_DIVISION = 50
NDefines.NAI.LAND_DESIGN_DEMAND_TRAINING_DIVISION = 50
NDefines.NAI.LAND_DESIGN_DEMAND_GARRISON_DIVISION = 10
NDefines.NAI.LAND_DESIGN_DEMAND_UNUSED_TEMPLATE = 10 --1
NDefines.NAI.LAND_DESIGN_DEMAND_ABSENT = 10 --0

-- The AI "desires" to spend XP on doctrines templates and equipment.
-- The desire is built up over time and when XP is available it spends it on the action that has the highest accumulated desire. After spending XP the desire is reset in effect balancing the desires.
-- Below is the daily desire gain for each action.

NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_LAND_DOCTRINE = 1    -- How quickly is desire to unlock land doctrines accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_NAVAL_DOCTRINE = 1   -- How quickly is desire to unlock naval doctrines accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_AIR_DOCTRINE = 1    -- How quickly is desire to unlock air doctrines accumulated?

--EAI: make sure land template desire is always at the top if the doctrine desire is high but the mod blocks it AI wont create templates
NDefines.NAI.DESIRE_USE_XP_TO_UPDATE_LAND_TEMPLATE = 100.0 --2.0    -- How quickly is desire to update/create templates accumulated?

NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_LAND_EQUIPMENT = 2.0  -- How quickly is desire to update/create land equipment variants accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_NAVAL_EQUIPMENT = 100.0 -- How quickly is desire to update/create naval equipment variants accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_AIR_EQUIPMENT = 100.0  -- How quickly is desire to update/create air equipment variants accumulated?

NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_ARMY_SPIRIT = 0.4    -- How quickly is desire to unlock army spirits accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_NAVY_SPIRIT = 0.4   -- How quickly is desire to unlock naval spirits accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_AIR_SPIRIT = 0.4    -- How quickly is desire to unlock air spirits accumulated?

NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_DOCTRINE = 7       -- Recalculate desired best doctrine to unlock with this many days inbetween.
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_TEMPLATE = 7       -- Recalculate desired best template to upgrade with this many days inbetween.
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_EQUIPMENT = 7      -- Recalculate desired best equipment to upgrade with this many days inbetween.

NDefines.NAI.GARRISON_TEMPLATE_SCORE_IC_FACTOR = 1.0 -- ai uses these defines while calculating garrison template score of a template.
NDefines.NAI.GARRISON_TEMPLATE_SCORE_MANPOWER_FACTOR = 0.05 -- formula is (template_ic * ic_factor + template_manpower * manpower_factor ) / template_supression (lower is better)	

NDefines.NAI.DIVISION_UPGRADE_MIN_XP = 100				-- Instead of 200 Minimum XP before attempting to upgrade a division template.
NDefines.NAI.DIVISION_CREATE_MIN_XP = 100				-- Instead of 150 Minimum XP before attempting to create a fresh new division template.
NDefines.NAI.VARIANT_UPGRADE_MIN_XP = 100				-- Instead of 150 Minimum XP before attempting to create a new variant.
NDefines.NAI.UPGRADE_XP_RUSH_UPDATE = 150				-- Instead of 200 If XP is above this on the daily tick the AI will attempt to spend it

--------------------------------------------------------------------------------------------------------------
-- DIVISION PRODUCTION
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.DEPLOY_MIN_TRAINING_SURRENDER_FACTOR = 0.5     -- Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime while surrender progress is higher than 0
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_SURRENDER_FACTOR = 0.8   -- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime while surrender progress is higher than 0
NDefines.NAI.DEPLOY_MIN_TRAINING_PEACE_FACTOR = 0.4        -- Required percentage of training (1.0 = 100%) for AI to deploy unit in peacetime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_PEACE_FACTOR = 0.9       -- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in peacetime
NDefines.NAI.DEPLOY_MIN_TRAINING_WAR_FACTOR = 0.9          -- Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_WAR_FACTOR = 0.9         -- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_CAP_DEPLOY_FACTOR = 0.85  -- If training is capped by equipment deficit and we have reached that cap deploy unit anyway if percentage is above this (reinforce in field instead).
    
NDefines.NAI.ENTRENCHMENT_WEIGHT = 50.0
NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.50
NDefines.NAI.MAIN_ENEMY_FRONT_IMPORTANCE = 50.0
NDefines.NAI.RESERVE_TO_COMMITTED_BALANCE = 0.2
NDefines.NAI.FRONT_REASSIGN_DISTANCE = 250.0
NDefines.NAI.HOUR_BAD_COMBAT_REEVALUATE = 90                  -- reduced from 168 ; if we are in combat for this amount and it goes shitty then try skipping it 
NDefines.NAI.UNIT_ASSIGNMENT_TERRAIN_IMPORTANCE = 20.0 -- Instead of 10 should improve terrain optimization

--------------------------------------------------------------------------------------------------------------
-- FUEL
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_ARMY_MAX_CONSUMPTION = 365  -- AI will try to buffer at least this amount of days on max consumption will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer 
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_AIR_MAX_CONSUMPTION  = 365  -- AI will try to buffer at least this amount of days on max consumption will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_NAVY_MAX_CONSUMPTION = 365  -- AI will try to buffer at least this amount of days on max consumption will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer

--------------------------------------------------------------------------------------------------------------
-- DIPLOMACY
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.DIPLOMATIC_ACTION_GOOD_BAD_RATIO_THRESHOLD = 1
NDefines.NAI.BASE_RELUCTANCE = 15 						-- (Original value: 20) Base reluctance applied to all diplomatic offers
NDefines.NAI.DIPLOMATIC_ACTION_RANDOM_FACTOR = 0.5 		-- How much of the AI diplomatic action scoring is randomly determined (1.0 = half random 2.0 = 2/3rd random etc)
NDefines.NAI.DIPLOMATIC_ACTION_PROPOSE_SCORE = 50 		-- AI must score a diplomatic action at least this highly to propose it themselves
NDefines.NAI.DILPOMATIC_ACTION_DECLARE_WAR_WARGOAL_BASE = 50 -- Base diplomatic action score bonus to go to war per wargoal
NDefines.NAI.DIPLOMATIC_ACTION_BREAK_SCORE = -50 		-- (Original value: -10) AI must score a diplomatic action less than this to break it off	
NDefines.NAI.DIPLOMACY_CREATE_FACTION_FACTOR = 0.75		-- Factor for AI desire to create a new faction. Val < 1.0 makes it less likely to create than to join.
NDefines.NAI.DIPLOMACY_FACTION_WRONG_IDEOLOGY_PENALTY = 95 -- AI penalty for diplomatic faction acitons between nations of different ideologies
NDefines.NAI.DIPLOMACY_FACTION_SAME_IDEOLOGY_MAJOR = 50 -- (Original value: 15) AI bonus acceptance when being asked about faction is a major of the same ideology
NDefines.NAI.DIPLOMACY_FACTION_NEUTRALITY_PENALTY = 50	-- Neutral nations have a separate penalty not wanting to get involved at all rather than caring much about the difference in ideology
NDefines.NAI.DIPLOMACY_FACTION_GLOBAL_TENSION_FACTOR = 0.2-- How much the AI takes global tension into account when considering faction actions
NDefines.NAI.TENSION_DECAY = 0.20						-- (Original value: 0.15) Each months tension decays this much. Base was 0.1
NDefines.NAI.DIPLOMACY_FACTION_WAR_RELUCTANCE = -50		-- Penalty to desire to enter a faction with a country that we are not fighting wars together with.
NDefines.NAI.DIPLOMACY_FACTION_TAKE_OVER_RELUCTANCE_VERSUS_HUMAN = 2.0	-- Multiplier penalty for how much stronger than a human faction member an AI country must be to choose to assume faction leadership.
NDefines.NAI.DIPLOMACY_SCARED_MINOR_EXTRA_RELUCTANCE = -50 -- extra reluctance to join stuff as scared minor
NDefines.NAI.DIPLOMACY_FACTION_PLAYER_JOIN = 20			-- Bonus for human players asking to join a faction.
NDefines.NAI.DIPLOMACY_BOOST_PARTY_COST_FACTOR = 100.0	-- Desire to boost party popularity subtracts the daily cost multiplied by this
NDefines.NAI.DIPLOMACY_IMPROVE_RELATION_COST_FACTOR = 7.0-- Desire to boost relations subtracts the cost multiplied by this
NDefines.NAI.DIPLOMACY_IMPROVE_RELATION_PP_FACTOR = 0.1	-- Desire to boost relations adds total PP multiplied by this
NDefines.NAI.DIPLOMACY_SEND_ATTACHE_COST_FACTOR = 5.0	-- Desire to send attache substracts the cost multiplied by this
NDefines.NAI.DIPLOMACY_SEND_ATTACHE_PP_FACTOR = 0.1	-- Desire to send attache adds total PP multiplied by this
NDefines.NAI.DIPLOMACY_REJECTED_WAIT_MONTHS_BASE = 4	-- AI will not repeat offers until at least this time has passed and at most the double
NDefines.NAI.DIPLOMACY_CALL_ALLY_VALIDITY_DURATION = 1	-- Overwrite above value for CallAlly and JoinAlly diplo action. This is however fixed and is not subject to randomness. Also this is the time the AI will keep the action in its incoming queue without declining it.
NDefines.NAI.DIPLOMACY_SEND_MAX_FACTION = 0.75			-- Country should not send away more units than this as expeditionaries
NDefines.NAI.DIPLOMACY_ACCEPT_VOLUNTEERS_BASE = 50		-- Base value of volunteer acceptance (help is welcome)
NDefines.NAI.DIPLOMACY_ACCEPT_ATTACHE_BASE = 50			-- Base value of attache acceptance (help is welcome)
NDefines.NAI.DIPLOMACY_ACCEPT_ATTACHE_OPINION_TRASHHOLD = 20 -- Value of opinion that will remove accepting penalty for receiveing the attache
NDefines.NAI.DIPLOMACY_ACCEPT_ATTACHE_OPINION_PENALTY = -100 -- Value of acceptance penalty if the opinion too low 
NDefines.NAI.DIPLOMACY_FACTION_MAJOR_AT_WAR = 1000.0	-- Factor that will be multiplied with the surrender level in the desire to offer to the other ai to join a faction
NDefines.NAI.DIPLOMACY_FACTION_SURRENDER_LEVEL = 20 	-- How much the recipient nation losing matters for joining a faction
NDefines.NAI.DIPLO_PREFER_OTHER_FACTION = -200			-- The country has yet to ask some other faction it would prefer to be a part of.
NDefines.NAI.GENERATE_WARGOAL_THREAT_BASELINE = 0.6
NDefines.NAI.LENDLEASE_FRACTION_OF_PRODUCTION = 0.25 --0.5
NDefines.NAI.LENDLEASE_FRACTION_OF_STOCKPILE = 0.125 --0.25

NDefines.NAI.FASCISTS_ALLY_DEMOCRACIES = -150
NDefines.NAI.FASCISTS_ALLY_COMMUNISTS = -150
NDefines.NAI.COMMUNISTS_ALLY_FASCISTS = -150
NDefines.NAI.DEMOCRACIES_ALLY_COMMUNISTS = -75
NDefines.NAI.COMMUNISTS_ALLY_DEMOCRACIES = -75

NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR = 0.15	-- Base value for how much of currently used equipment the AI will at least strive to have in stock

NDefines.NAI.GENERATE_WARGOAL_ANTAGONIZE_SCALE = 0.25 -- (Original value: 0.35) How likely the AI acts on claims to generated war goals. Baseline is 'min_threat - antagonize * scale.' So don't lower it below 0.25! 

--------------------------------------------------------------------------------------------------------------
-- ECONOMY
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.BUILDING_TARGETS_BUILDING_PRIORITIES = {				-- buildings in order of pirority when considering building targets strategies. First has the greatest priority omitted has the lowest. NOTE: not all buildings are supported by building targets strategies.
    'infrastructure',
    'industrial_complex',
    'arms_factory',
    'dockyard',
}

--------------------------------------------------------------------------------------------------------------
-- FRONT CONTROL/ARMY
--------------------------------------------------------------------------------------------------------------	

NDefines.NAI.MIN_AI_UNITS_PER_TILE_FOR_STANDARD_COHESION = 2.0	-- How many units should we have for each tile along a front in order to switch to standard cohesion (less moving around)
NDefines.NAI.MIN_FRONT_SIZE_TO_CONSIDER_STANDARD_COHESION = 2000	-- How long should fronts be before we consider switching to standard cohesion (under this standard cohesion fronts will switch back to relaxed)

NDefines.NAI.ASSIGN_TANKS_TO_WAR_FRONT = 8.0 --4.0
NDefines.NAI.ASSIGN_TANKS_TO_NON_WAR_FRONT = 0.2 --0.4

NDefines.NAI.PLAN_EXECUTE_RUSH = -10
NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_LOW = 0.85							-- Minimum org % for a unit to actively attack an enemy unit when executing a plan
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.85						-- Minimum strength for a unit to actively attack an enemy unit when executing a plan
NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.65							-- (LOWMEDHIGH) corresponds to the plan execution agressiveness level.
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.65	
NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.5		
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.5
NDefines.NAI.PLAN_FACTION_STRONG_TO_EXECUTE = 0.65 --0.80	0.60		        -- % or more of units in an order to consider ececuting the plan	

NDefines.NAI.PLAN_ACTIVATION_MAJOR_WEIGHT_FACTOR = 1		                    -- AI countries will hold on activating plans if stronger countries have plans in the same location. Majors count extra (value of 1 will negate this)
NDefines.NAI.PLAN_ACTIVATION_PLAYER_WEIGHT_FACTOR = 1 		                -- AI countries will hold on activating plans if player controlled countries have plans in the same location. Majors count extra (value of 1 will negate this)

NDefines.NAI.FALLBACK_LOSING_FACTOR = 0.0
NDefines.NAI.PLAN_MIN_SIZE_FOR_FALLBACK = 5000					                -- A country with less provinces than this will not draw fallback plans  but rather station their troops along the front

-- these are all 3 numbers for min desired max unit need weights for area defense
NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_VP_WEIGHT = { 1.0, 1.0, 1.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_VP_WEIGHT = { 0.0, 1.0, 2.0 }
NDefines.NAI.AREA_DEFENSE_HOME_VP_WEIGHT = { 0.0, 0.5, 1.0 }
NDefines.NAI.AREA_DEFENSE_OTHER_VP_WEIGHT = { 0.0, 0.0, 1.0 }

NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_COAST_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_COAST_WEIGHT = { 0.0, 0.2, 0.7 }
NDefines.NAI.AREA_DEFENSE_HOME_COAST_WEIGHT = { 0.0, 0.1, 0.5 }
NDefines.NAI.AREA_DEFENSE_OTHER_COAST_WEIGHT = { 0.0, 0.0, 0.0 }

NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_BASE_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_BASE_WEIGHT = { 0.5, 1.0, 1.5 }
NDefines.NAI.AREA_DEFENSE_HOME_BASE_WEIGHT = { 0.5, 1.0, 1.0 }
NDefines.NAI.AREA_DEFENSE_OTHER_BASE_WEIGHT = { 0.5, 0.5, 1.0 }


NDefines.NAI.ORG_UNIT_WEAK = 0.4						-- Organization % for unit to be considered weak
NDefines.NAI.STR_UNIT_WEAK = 0.4					-- Strength (equipment) % for unit to be considered weak

NDefines.NAI.ORG_UNIT_NORMAL = 0.7						-- Organization % for unit to be considered normal
NDefines.NAI.STR_UNIT_NORMAL = 0.7						-- Strength (equipment) % for unit to be considered normal

NDefines.NAI.ORG_UNIT_STRONG = 0.80

NDefines.NAI.ATTACK_HEAVILY_DEFENDED_LIMIT = 0.8			-- reduced from 1.0 ; AI will not launch attacks against heavily defended fronts unless they consider to have this level of advantage (1.0 = 100%)

NDefines.NAI.MAX_ALLOWED_NAVAL_DANGER = 51				-- AI will ignore naval paths that has danger value of above this threshold while assigning units

NDefines.NAI.DESPERATE_AI_WEAK_UNIT_STR_LIMIT = 0.1					-- ai will increase number of units assigned to break from desperate situations when units are start falling lower than this str limit
NDefines.NAI.DESPERATE_AI_MIN_ORG_BEFORE_ATTACK = 0.85					-- ai will wait for this much org to attack an enemy prov in desperate situations
NDefines.NAI.DESPERATE_AI_MIN_ORG_BEFORE_MOVE = 0.25				-- ai will wait for this much org to move in desperate situations
NDefines.NAI.DESPERATE_ATTACK_WITHOUT_ORG_WHEN_NO_ORG_GAIN = 175		-- if ai can't regain enough org to attack in this many hours it will go truly desperate and attack anyway (still has to wait for move org)

NDefines.NAI.WANTED_UNITS_MANPOWER_DIVISOR = 22000

-- seems to not be based on the right number of entries even before AAT
-- NDefines.NAI.DIVISION_DESIGN_WEIGHTS = {							-- Base values used by AI to evaluate value of a stat
-- 	--Army Values
-- 	0.5, -- default_morale
-- 	1.0, -- defense
-- 	1.0, -- breakthrough
-- 	1.0, -- hardness
-- 	1.3, -- soft_attack #was 1.2 should build better divs.
-- 	0.01, -- hard_attack #was 0. Experiment so AI base vaules anti-tank and tanks more - SpicyAlfrdo
-- 	0.0, -- recon
-- 	0.0, -- entrenchment
-- 	0.0, -- initiative
-- 	0.0, -- casualty_trickleback 
-- 	-1.0, -- supply_consumption_factor
-- 	-0.25, -- supply_consumption
-- 	0.0, -- suppression
-- 	0.0, -- suppression_factor
-- 	0.0, -- experience_loss_factor
-- 	0.0, -- equipment_capture_factor
-- 	0.0, -- fuel_capacity
-- 	--Navy Values
-- 	0.0, -- surface_detection
-- 	0.01, -- sub_detection Experimental nudge for the ai to not build DD's that let Subs massacre them - SpicyAlfrdo
-- 	0.0, -- surface_visibility
-- 	0.0, -- sub_visibility
-- 	0.0, -- lg attack
-- 	0.0, -- lg piercing
-- 	0.0, -- hg attack
-- 	0.0, -- hg piercing
-- 	0.0, -- torpedo
-- 	0.0, -- sub attack
-- 	0.0, -- anti air attack
-- 	0.0, -- amphibious_defense
-- 	0.0, -- naval_speed
-- 	0.0, -- range
-- 	0.0, -- mine plant
-- 	0.0, -- mine sweep
-- 	0.0, -- raiding coordination
-- 	0.0, -- patrol coordination
-- 	0.0, -- search and destroy coordination
-- 	--Air Values
-- 	0.0, -- air_range
-- 	0.0, -- air_defence
-- 	0.0, -- air_attack
-- 	0.0, -- air_agility
-- 	0.0, -- air_bombing
-- 	0.01, -- air_superiority #ai nudge for the most important air stat bar none - Spicyalfredo
-- 	0.0, -- naval_strike_attack
-- 	0.0, -- naval_strike_targetting
-- 	0.0, -- air_ground_attack
-- 	0.0, -- air_visibility_factor
-- 	--Common Values
-- 	1.0, -- max_organisation
-- 	1.0, -- max_strength
-- 	1.0, -- maximum_speed
-- 	1.0, -- armor_value
-- 	0.5, -- ap_attack
-- 	0.0, -- reliability
-- 	0.0, -- reliability_factor
-- 	-0.25, -- weight
-- 	0.0, -- fuel_consumption
-- 	0.0, -- fuel_consumption_factor
-- 	--Special Values
-- 	0.0, -- strategic_attack
-- 	0.0, -- carrier_size
-- 	0.0, -- acclimatization hot gain
-- 	0.0, -- acclimatization cold gain
-- 	0.0, -- night_penalty
-- 	-0.5, -- build_cost_ic
-- }


NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 1.0				-- Factor for max number of units to assign to naval invasion orders
NDefines.NAI.DESIRED_UNITS_FACTOR_INVASION_ORDER = 1.0			-- Factor for desired number of units to assign to naval invasion orders
NDefines.NAI.MIN_UNITS_FACTOR_INVASION_ORDER = 0.5				-- Factor for min number of units to assign to naval invasion orders #was 1.0 should reduce low unit number naval invasions

NDefines.NAI.NEW_LEADER_EXTRA_PP_FACTOR = 1					-- Country must have at least this many times extra PP to get new admirals or army leaders #Was 2.0
NDefines.NAI.ATTACK_HEAVILY_DEFENDED_LIMIT = 0.7				-- AI will not launch attacks against heavily defended fronts unless they consider to have this level of advantage (1.0 = 100%) #was 0.5
NDefines.NAI.HOUR_BAD_COMBAT_REEVALUATE = 72                  -- if we are in combat for this amount and it goes shitty then try skipping it #was 100

NDefines.NAI.PRODUCTION_LINE_SWITCH_SURPLUS_NEEDED_MODIFIER = 0.1	-- Is modified by efficency modifiers.
NDefines.NAI.PLAN_ACTIVATION_MAJOR_WEIGHT_FACTOR = 2.0			-- AI countries will hold on activating plans if stronger countries have plans in the same location. Majors count extra (value of 1 will negate this)
NDefines.NAI.PLAN_ACTIVATION_PLAYER_WEIGHT_FACTOR = 2.0		-- AI countries will hold on activating plans if player controlled countries have plans in the same location. Majors count extra (value of 1 will negate this)
NDefines.NAI.AREA_DEFENSE_BASE_IMPORTANCE = 4					-- Area defense order base importance value (used for determining order of troop selections)

NDefines.NAI.ALLY_SUPPLY_RATIO_FOR_UNIT_PRODUCTION = 0.00		-- supply ratio of ally supply chunks will be added to our own supply chunks (since we will fight around allies as well) modified by produce_unit_for_ally_supply_chunks strat


NDefines.NAI.XP_RATIO_REQUIRED_TO_RESEARCH_WITH_XP = 1.5		-- AI will at least need this amount of xp compared to cost of a tech to reserch it with XP #BASE WAS 2.0	

NDefines.NAI.FRONT_EVAL_UNIT_ACCURACY = 0.95                          -- scale how stupid ai will act on fronts. 0 is potato #BASE WAS 0.7

NDefines.NAI.MIN_NUM_CONQUERED_PROVINCES_TO_DEPRIO_NAVAL_INVADED_FRONTS = 35	-- if you conquer this amount of provinces after a naval invasion it will lose its prio status and will act as a regular front	

NDefines.NAI.GARRISON_FRACTION = 0.05 					-- How large part of a front should always be holding the line rather than advancing at the enemy

--------------------------------------------------------------------------------------------------------------
-- NAVY
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.SUPPLY_NEED_FACTOR = 3 -- 4

NDefines.NAI.NAVY_PREFERED_MAX_SIZE = 50.0 -- Upgraded from 20.0
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING = 0.10 -- maximum ratio of screens forces to be used in mine sweeping
NDefines.NAI.MISSING_CONVOYS_BOOST_FACTOR = 0.0
NDefines.NAI.CAPITAL_TASKFORCE_MAX_CAPITAL_COUNT = 6 		-- optimum capital count for capital taskforces
NDefines.NAI.SCREEN_TASKFORCE_MAX_SHIP_COUNT = 8			-- optimum screen count for screen taskforces
NDefines.NAI.SUB_TASKFORCE_MAX_SHIP_COUNT = 10 				-- optimum sub count for sub taskforces	

NDefines.NAI.MIN_NAVAL_MISSION_PRIO_TO_ASSIGN = {  -- priorities for regions to get assigned to a mission
    0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
    200, -- PATROL		
    200, -- STRIKE FORCE 
    200, -- CONVOY RAIDING
    100, -- CONVOY ESCORT
    200, -- MINES PLANTING	
    100, -- MINES SWEEPING	
    0, -- TRAIN
    0, -- RESERVE_FLEET
    100, -- NAVAL INVASION SUPPORT
}

NDefines.NAI.HIGH_PRIO_NAVAL_MISSION_SCORES = {  -- priorities for regions to get assigned to a mission
    0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
    3800, -- PATROL - 100000	
    1000, -- STRIKE FORCE 
    1500, -- CONVOY RAIDING
    3000, -- CONVOY ESCORT - 1000
    -1, -- MINES PLANTING	
    300, -- MINES SWEEPING	
    0, -- TRAIN
    0, -- RESERVE_FLEET
    1000, -- NAVAL INVASION SUPPORT
}

NDefines.NAI.MAX_MISSION_PER_TASKFORCE = {  -- max mission region/taskforce ratio
    0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
    1.5, -- PATROL		
    6, -- STRIKE FORCE 
    1.5, -- CONVOY RAIDING
    2, -- CONVOY ESCORT
    2, -- MINES PLANTING
    2, -- MINES SWEEPING
    0, -- TRAIN
    0, -- RESERVE_FLEET
    10, -- NAVAL INVASION SUPPORT
}

-------------------------
-- NAVAL INVASIONS
-------------------------
NDefines.NAI.ENEMY_NAVY_STRENGTH_DONT_BOTHER = 5		
NDefines.NAI.RELATIVE_STRENGTH_TO_INVADE = 0 --0.08			-- Compares the estimated strength of the country/faction compared to it's enemies to see if it should invade or stay at home to defend.
NDefines.NAI.RELATIVE_STRENGTH_TO_INVADE_DEFENSIVE = 0 --0.4	-- Compares the estimated strength of the country/faction compared to it's enemies to see if it should invade or stay at home to defend but while being a defensive country.
NDefines.NAI.INVASION_DISTANCE_RANDOMNESS = 150					-- This higher the value the more unpredictable the invasions. Compares to actual map distance in pixels. #BASE WAS 300
NDefines.NAI.INVASION_COASTAL_PROVS_PER_ORDER = 12				-- AI will consider one extra invasion per number of provinces stated here (num orders = total coast / this)
NDefines.NAI.MAX_DISTANCE_NAVAL_INVASION = 400.0				-- AI is extremely unwilling to plan naval invasions above this naval distance limit.
NDefines.NAI.MAX_INVASION_SIZE = 18 --24									-- max invasion group size

-------------------------
-- AIR AI
-------------------------
NDefines.NAI.PRODUCTION_CARRIER_PLANE_BUFFER_RATIO = 0.75 --1.5				-- in additiona to total deck size of carriers we want at list this ratio to buffer it
NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_AIR_TRAINING = 1
NDefines.NAI.LAND_COMBAT_OUR_COMBATS_AIR_IMPORTANCE = 1000		-- Strategic importance of our armies in the combats
NDefines.NAI.LAND_DEFENSE_INTERSEPTORS_PER_BOMBERS = 1		-- Amount of air interceptor planes requested per enemy bomber
NDefines.NAI.LAND_DEFENSE_CIVIL_FACTORY_IMPORTANCE = 800 -- 50			-- Strategic importance of civil factories
NDefines.NAI.LAND_DEFENSE_MILITARY_FACTORY_IMPORTANCE = 880 -- 70		-- Strategic importance of military factories
NDefines.NAI.LAND_DEFENSE_NAVAL_FACTORY_IMPORTANCE = 420 -- 30			-- Strategic importance of naval factories

NDefines.NAI.STR_BOMB_PLANES_PER_CIV_FACTORY = 200				-- Amount of planes requested per enemy civ factory
NDefines.NAI.STR_BOMB_PLANES_PER_MIL_FACTORY = 200				-- Amount of planes requested per enemy military factory
NDefines.NAI.STR_BOMB_PLANES_PER_NAV_FACTORY = 100				-- Amount of planes requested per enemy naval factory
NDefines.NAI.STR_BOMB_PLANES_PER_SUPPLY_HUB = 30                 -- Amount of planes requested per enemy supply node

NDefines.NAI.NAVAL_STRIKE_PLANES_PER_SHIP = 40					-- Amount of bombers requested per enemy ship
NDefines.NAI.NAVAL_SHIP_AIR_IMPORTANCE = 10000 --2.0					-- Naval ship air importance
NDefines.NAI.NAVAL_IMPORTANCE_SCALE = 2 --0.65						-- Naval total importance scale (every naval score get's multiplied by it)

NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_PATROLLING = 20 --10.0		-- Amount of naval patrol planes per ship on a patrol mission
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_RAIDING = 40 --10.0		-- Amount of naval patrol planes per ship on a convoy raid mission
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_ESCORTING = 20 --10.0		-- Amount of naval patrol planes per ship on a convoy escort mission

--------------------------------------------------------------------------------------------------------------
-- PP
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.COMMAND_POWER_BEFORE_SPEND_ON_TRAITS = 65.0

