NDefines.NMilitary.LAND_AIR_COMBAT_MAX_PLANES_PER_ENEMY_WIDTH = 0.75  -- WAS 3; 
NDefines.COMBAT_MAX_WINGS_AT_GROUND_ATTACK = 10000 -- 10000
NDefines.NAir.AIR_WING_MAX_SIZE = 500 

NDefines.NBuildings.AIRBASE_CAPACITY_MULT = 200 -- may change
NDefines.NAir.AIR_WING_FLIGHT_SPEED_MULT = 0.2 -- makes redeployement of fighters faster vanilla is 0.02
NDefines.NAir.AIR_DEPLOYMENT_DAYS = 0

NDefines.NMilitary.LAND_AIR_COMBAT_STR_DAMAGE_MODIFIER = 0.015 -- 0.04 vanila (md was 0.08)
NDefines.NMilitary.LAND_AIR_COMBAT_ORG_DAMAGE_MODIFIER = 0.03 -- 0.04 vanila (md was 0.08)
-- logi strike nerf
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_NO_TRUCK_DISRUPTION_FACTOR = 0.001 -- If a unit isn't motorized, still disrupt its supply by damage * this
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRUCK_DAMAGE_FACTOR = 0.02
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_INFRA_DAMAGE_SPILL_FACTOR = 0.00008 -- Portion of truck damage to additionally deal to infrastructure
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRAIN_DAMAGE_FACTOR = 0.003
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRAIN_DAMAGE_DISRUPTION_MITIGATION = 6.0 -- Multiply Train Damage by (Smooth / (Smooth + (Disruption * Mitigation)))
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRAIN_DAMAGE_DISRUPTION_SMOOTHING = 2.5
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_RAILWAY_DAMAGE_SPILL_FACTOR = 0.001 -- Portion of train damage to additionally deal to railways
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_DISRUPTION_MIN_DAMAGE_FACTOR = 0.01 -- Multiply train damage by this factor, scale from 1.0 at 0 disruption to this at AIR_WING_ATTACK_LOGISTICS_MAX_DISRUPTION_DAMAGE_TO_CONSIDER
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_MAX_DISRUPTION_DAMAGE_TO_CONSIDER = 5.0 -- see above
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_DIRECT_DISRUPTION_DAMAGE_FACTOR = 0.001 -- Disruption damage to supply throughput done by bombing damage, not dependant on killing trains which also causes diruption.
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRUCK_MAX_FACTOR = 0.03 -- max trucks we can destroy in one instance of a logistics strike

-- Strat Nerf
NDefines.NAir.DISRUPTION_FACTOR = 4.0								-- multiplier on disruption damage to scale its effects on planes
NDefines.NAir.DISRUPTION_FACTOR_CARRIER = 8.0							-- multiplier on disruption damage to scale its effects on carrier vs carrier planes
NDefines.NAir.DISRUPTION_SPEED_FACTOR = 1.0
NDefines.NAir.DISRUPTION_AGILITY_FACTOR = 0.0
NDefines.NAir.DISRUPTION_ATTACK_FACTOR = 0.0
NDefines.NAir.DISRUPTION_DETECTION_FACTOR = 1.0
NDefines.NAir.ESCORT_FACTOR = 2.0
NDefines.NAir.ESCORT_SPEED_FACTOR = 1.0
NDefines.NAir.ESCORT_AGILITY_FACTOR = 1.0
NDefines.NAir.ESCORT_ATTACK_FACTOR = 1.0
NDefines.NAir.DISRUPTION_DEFENCE_DEFENCE_FACTOR = 0.5
NDefines.NAir.DISRUPTION_DEFENCE_SPEED_FACTOR = 1.0
NDefines.NAir.DISRUPTION_DEFENCE_ATTACK_FACTOR = 0.0
NDefines.NAir.AIR_WING_BOMB_DAMAGE_FACTOR = 0.4 -- MD had 75 or 37.5x vanilla which was insane
NDefines.NAir.AIR_COMBAT_FINAL_DAMAGE_SCALE = 0.1 -- 0.015
-- General air death increase
NDefines.NAir.COMBAT_DAMAGE_SCALE = 0.2 -- 0.1

NDefines.NAir.AIR_WING_XP_LEVELS = {20, 40, 60, 80, 100, 140, 180, 220, 260, 300, 390, 480, 570, 660, 750, 780, 810, 840, 870, 900}
NDefines.NAir.AIR_WING_COUNTRY_XP_FROM_TRAINING_FACTOR = 0.01


-- Decrease Air Training Time
NDefines.NAir.AIR_WING_XP_TRAINING_MAX = 300 -- 300
NDefines.NAir.AIR_WING_XP_TRAINING_MISSION_GAIN_DAILY = 8 -- 3.3