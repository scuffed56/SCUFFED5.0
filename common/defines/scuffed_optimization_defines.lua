---------------------Thanks Thrasy :)


NDefines.NTechnology.MAX_SUBTECHS = 4                                 -- Added to stop weird things from happening with the amphibious tank variants 

-- QOL
NDefines.NGame.LAG_DAYS_FOR_LOWER_SPEED = 1000
NDefines.NGame.LAG_DAYS_FOR_PAUSE = 100    							-- 
NDefines.NGame.COMBAT_LOG_MAX_MONTHS = 12				-- WAS 48 | drastically cuts down on save file sizes after WW2 starts and well into barbarossa
NDefines.NGame.MESSAGE_TIMEOUT_DAYS = 14					     	 -- WAS 60 	| less messages lying around at the top of your screen
NDefines.NGame.GAME_SPEED_SECONDS = { 100.0, 0.25, 0.1, 0.04, 0.0 } -- SPEED 4 IS 0.1 IN VANILLA  game speeds for each level. Must be 5 entries with last one 0 for unbound 
NDefines.NGame.MISSION_REMOVE_FROM_INTERFACE_DEFAULT = 3		-- Default days before a mission is removed from the interface after having failed or completed
NDefines.NGame.MAX_SCRIPTED_LOC_RECURSION = 20                  -- vanilla 30, lowering this but I have no idea if it will matter -Thrasymachus
NDefines.NGame.MAX_EFFECT_ITERATION	= 100                    -- vanilla 1000, lowering this but I have no idea if it will matter -Thrasymachus

NDefines.NCountry.EVENT_PROCESS_OFFSET = 20 -- WAS 20. The higher the number, the less responsive mean_time_to_happen events are, but the better the performance is.

-- score 
NDefines.NCountry.COUNTRY_SCORE_MULTIPLIER = 0				-- Weight of the country score.
NDefines.NCountry.ARMY_SCORE_MULTIPLIER = 0					-- Based on number of armies.
NDefines.NCountry.NAVY_SCORE_MULTIPLIER = 0					-- Based on number of navies.
NDefines.NCountry.AIR_SCORE_MULTIPLIER = 0					-- Based on number of planes (which is typically a lot).
NDefines.NCountry.INDUSTRY_SCORE_MULTIPLIER = 0				-- Based on number of factories.
NDefines.NCountry.PROVINCE_SCORE_MULTIPLIER = 0				-- Based on number of controlled provinces.

NDefines.NNavy.NAVAL_COMBAT_RESULT_TIMEOUT_YEARS = 1							-- WAS 2 | after that many years, we clear the naval combat results, so they don't get stuck forever in the memory.
NDefines.NNavy.CONVOY_LOSS_HISTORY_TIMEOUT_MONTHS = 1						-- WAS 24 | after this many months remove the history of lost convoys to not bloat savegames and memory since there is no way to see them anyway
