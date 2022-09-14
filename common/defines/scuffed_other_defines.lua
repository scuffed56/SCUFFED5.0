NDefines.NOperatives.AGENCY_AI_BASE_NUM_FACTORIES = 1000.0				-- Used by AI to pace the upgrades. Formula : if( AGENCY_AI_BASE_NUM_FACTORIES <= num_civ_factories - num_upgrades * AGENCY_AI_PER_UPGRADE_FACTORIES )
NDefines.NOperatives.AGENCY_AI_PER_UPGRADE_FACTORIES = 100.0			-- Used by AI to pace the upgrades. Formula : if( AGENCY_AI_BASE_NUM_FACTORIES <= num_civ_factories - num_upgrades * AGENCY_AI_PER_UPGRADE_FACTORIES )

NDefines.NBuildings.OWNER_CHANGE_EXTRA_SHARED_SLOTS_FACTOR = 1.0 -- may change
NDefines.NProduction.MIN_LICENSE_ACTIVE_DAYS = 0                 -- License can be cancelled at any time now, down from 30 | 

NDefines.NCountry.POPULATION_YEARLY_GROWTH_BASE = 0               --Removed for game stability/reducing chance of desync

NDefines.NDiplomacy.IDEOLOGY_JOIN_FACTION_MIN_LEVEL = 0
NDefines.NDiplomacy.TENSION_FACTION_JOIN = 0
NDefines.NTrade.BASE_TRADE_FACTOR = 50
NDefines.NTrade.PARTY_SUPPORT_TRADE_FACTOR = 20

NDefines.NCountry.FUEL_LEASE_CONVOY_RATIO = 0.0

-- free license(need to balance so off for now)
--NDefines.NProduction.LICENSE_IC_COST_YEAR_INCREASE = 0					-- Free license
--NDefines.NProduction.MIN_LICENSE_ACTIVE_DAYS = 1                        -- Free license
--NDefines.NProduction.BASE_LICENSE_IC_COST = 0						    -- Base IC cost for lended license