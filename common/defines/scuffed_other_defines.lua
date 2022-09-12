NDefines.NOperatives.AGENCY_AI_BASE_NUM_FACTORIES = 1000.0				-- Used by AI to pace the upgrades. Formula : if( AGENCY_AI_BASE_NUM_FACTORIES <= num_civ_factories - num_upgrades * AGENCY_AI_PER_UPGRADE_FACTORIES )
NDefines.NOperatives.AGENCY_AI_PER_UPGRADE_FACTORIES = 100.0			-- Used by AI to pace the upgrades. Formula : if( AGENCY_AI_BASE_NUM_FACTORIES <= num_civ_factories - num_upgrades * AGENCY_AI_PER_UPGRADE_FACTORIES )

NDefines.NBuildings.OWNER_CHANGE_EXTRA_SHARED_SLOTS_FACTOR = 1.0 -- may change
NDefines.NProduction.MIN_LICENSE_ACTIVE_DAYS = 0                 -- License can be cancelled at any time now, down from 30 | 

NDefines.NCountry.POPULATION_YEARLY_GROWTH_BASE = 0               --Removed for game stability/reducing chance of desync

NDefines.NCountry.STATE_OCCUPATION_COST_MULTIPLIER = 0		-- Multiplier for state value to PP cost for occupation
NDefines.NCountry.STATE_VALUE_NON_CORE_STATE_FRACTION = 0		-- If a state is not a core we assume we will get 50% of the factory slots
NDefines.NCountry.ARMY_IMPORTANCE_FACTOR = 0                   -- Army factor for AI and calculations
NDefines.NCountry.TERRAIN_IMPORTANCE_FACTOR = 0               -- Terrain base factor for state strategic value
NDefines.NCountry.VICTORY_POINTS_IMPORTANCE_FACTOR = 0           -- State victory points importance factor for AI and calculations
NDefines.NCountry.BUILDING_IMPORTANCE_FACTOR = 0               -- State building importance factor for AI and calculations
NDefines.NCountry.RESOURCE_IMPORTANCE_FACTOR = 0               -- State resource importance factor for AI and calculations
NDefines.NCountry.FRONT_PROVINCE_SCORE = 0   					-- Max province score of a front. Used for the hostile troop alert

NDefines.NTrade.BASE_TRADE_FACTOR = 50
NDefines.NTrade.PARTY_SUPPORT_TRADE_FACTOR = 20

NDefines.NCountry.FUEL_LEASE_CONVOY_RATIO = 0.0

-- free license(need to balance so off for now)
--NDefines.NProduction.LICENSE_IC_COST_YEAR_INCREASE = 0					-- Free license
--NDefines.NProduction.MIN_LICENSE_ACTIVE_DAYS = 1                        -- Free license
--NDefines.NProduction.BASE_LICENSE_IC_COST = 0						    -- Base IC cost for lended license