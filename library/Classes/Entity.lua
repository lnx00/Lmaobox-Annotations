---@meta

---Represents an entity in the game world. \
---Make sure to not store entities long term, they can become invalid over time - their methods will return nil in that case.
---@class Entity
local Entity = {}

--[[ Methods ]]

---Returns whether the entity is valid. This is done automatically and all other functions will return nil if the entity is invalid.
---@return boolean
---@nodiscard
function Entity:IsValid() end

---Returns the name of the entity if its a player
---@return string
---@nodiscard
function Entity:GetName() end

---Returns the class of the entity
---@return string
---@nodiscard
function Entity:GetClass() end

---Returns entity index
---@return integer
---@nodiscard
function Entity:GetIndex() end

---Returns the team number of the entity
---@return E_TeamNumber
function Entity:GetTeamNumber() end

---Returns the absolute position of the entity
---@return Vector3
---@nodiscard
function Entity:GetAbsOrigin() end

---Sets the absolute position of the entity
---@param origin Vector3
function Entity:SetAbsOrigin(origin) end

---Returns mins of the entity, must be combined with origin
---@return Vector3
---@nodiscard
function Entity:GetMins() end

---Returns maxs of the entity, must be combined with origin
---@return Vector3
---@nodiscard
function Entity:GetMaxs() end

---Returns the health of the entity
---@return integer
---@nodiscard
function Entity:GetHealth() end

---Returns the max health of the entity
---@return integer
---@nodiscard
function Entity:GetMaxHealth() end

---Returns true if the entity is a player
---@return boolean
---@nodiscard
function Entity:IsPlayer() end

---Returns true if the entity is a weapon
---@return boolean
---@nodiscard
function Entity:IsWeapon() end

---Returns true if the entity is alive
---@return boolean
---@nodiscard
function Entity:IsAlive() end

---Returns the estimated absolute velocity of the entity as Vector3
---@return Vector3
---@nodiscard
function Entity:EstimateAbsVelocity() end

---Returns the move type of the entity
---@return E_MoveType
---@nodiscard
function Entity:GetMoveType() end

---Returns the hitbox surrounding box of the entity as table of Vector3 mins and maxs
---@return {[1]: Vector3, [2]: Vector3}
---@nodiscard
function Entity:HitboxSurroundingBox() end

---Returns the hitbox surrounding box of the entity in entity space as table of Vector3 mins and maxs
---@return { [1]: Vector3, [2]: Vector3 }
---@nodiscard
function Entity:EntitySpaceHitboxSurroundingBox() end

---Sets up the bones of the entity, boneMask is optional, by default 0x7FF00, and can be changed if you want to only setup certain bones.
---The currentTime argument is optional, by default 0, and can be changed if you want the transform to be based on a different time.
---Returns a table of at most 128 entries of a 3x4 matrix (table) of float numbers, representing the bone transforms.
---@param boneMask? integer # optional (default = `0x7FF00`)
---@param currentTime? number # optional (default = `0`)
---@return Matrix3x4[]
function Entity:SetupBones(boneMask, currentTime) end

---Returns world-transformed hitboxes of the entity as table of tables, each containing 2 entries of Vector3: mins and maxs positions of each hitbox.
---The currentTime argument is optional, by default 0, and can be changed if you want the transform to be based on a different time
---@deprecated Use Entity:SetupBones instead
---@param currentTime? number # optional (default = `0`)
---@return table<E_Hitbox, { [1]: Vector3, [2]: Vector3 }>
---@nodiscard
function Entity:GetHitboxes(currentTime) end

---Sets the model of the entity, returns true if successful
---@param modelPath string
function Entity:SetModel(modelPath) end

---Gets the model of the entity, returned as model string
---@return string
---@nodiscard
function Entity:GetModel() end

---Releases the entity, making it invalid. \
---Calling this for networkable entities will kick you from the server. \
---This is only useful for non-networkable entities created with `entities.CreateEntityByName`
function Entity:Release() end

---Returns true if the entity is dormant (not being updated). Dormant entities are not drawn and shouldn't be interacted with.
---@return boolean
---@nodiscard
function Entity:IsDormant() end

---If the entity is an item that can be in player's inventory, such as a wearable or a weapon, returns the inventory item as Item
---@return Item
---@nodiscard
function Entity:ToInventoryItem() end

--[[ Attributes ]]

---Returns the number value of the attribute present on the entity
---@param name string
---@param defaultValue? number # optional (default = `1.0`)
function Entity:AttributeHookFloat(name, defaultValue) end

---Returns the integer value of the attribute present on the entity
---@param name string
---@param defaultValue? integer # optional (default = `1`)
function Entity:AttributeHookInt(name, defaultValue) end

--[[ Entity netvars/props ]]

---Returns the float value of the given netvar
---@param ... string
---@return number
---@nodiscard
function Entity:GetPropFloat(...) end

---Returns the int value of the given netvar
---@param ... string
---@return integer
---@nodiscard
function Entity:GetPropInt(...) end

---Returns the bool value of the given netvar
---@param ... string
---@return boolean
---@nodiscard
function Entity:GetPropBool(...) end

---Returns the string value of the given netvar
---@param ... string
---@return string
---@nodiscard
function Entity:GetPropString(...) end

---Returns the vector value of the given netvar
---@param ... string
---@return Vector3
---@nodiscard
function Entity:GetPropVector(...) end

---Returns the Entity class of the given netvar, usually those that has prefix: ``m_hXXXX``
---@param ... string
---@return Entity handle
---@nodiscard
function Entity:GetPropEntity(...) end

---Sets the float value of the given netvar.
---@param value number
---@param ... string
function Entity:SetPropFloat(value, ...) end

---Sets the int value of the given netvar.
---@param value integer
---@param ... string
function Entity:SetPropInt(value, ...) end

---Sets the bool value of the given netvar.
---@param value boolean
---@param ... string
function Entity:SetPropBool(value, ...) end

---Set the entity value of the given netvar.
---@param value Entity
---@param ... string
function Entity:SetPropEntity(value, ...) end

---Set the vector value of the given netvar.
---@param value Vector3
---@param ... string
function Entity:SetPropVector(value, ...) end

--[[ Prop Data Tables ]]

---Returns a table of floats, index them with integers based on context of the netvar
---@param ... string
---@return table<integer, number>
function Entity:GetPropDataTableFloat(...) end

---Returns a table of bools, index them with integers based on context of the netvar
---@param ... string
---@return table<integer, boolean>
function Entity:GetPropDataTableBool(...) end

---Returns a table of ints, index them with integers based on context of the netvar
---@param ... string
---@return table<integer, integer>
function Entity:GetPropDataTableInt(...) end

---Returns a table of entities, index them with integers based on context of the netvar
---@param ... string
---@return table<integer, Entity>
function Entity:GetPropDataTableEntity(...) end

---Sets the number value of the given netvar at the given index.
---@param value number
---@param index integer
---@param ... string
function Entity:SetPropDataTableFloat(value, index, ...) end

---Sets the bool value of the given netvar at the given index.
---@param value boolean
---@param index integer
---@param ... string
function Entity:SetPropDataTableBool(value, index, ...) end

---Sets the integer value of the given netvar at the given index.
---@param value integer
---@param index integer
---@param ... string
function Entity:SetPropDataTableInt(value, index, ...) end

---Sets the Entity value of the given netvar at the given index.
---@param value Entity
---@param index integer
---@param ... string
function Entity:SetPropDataTableEntity(value, index, ...) end

--[[ Player entity methods ]]

---Returns whether the player is in the specified condition. List of conditions in TF2 can be found
---@param condition E_TFCOND
---@return boolean
---@nodiscard
function Entity:InCond(condition) end

---Adds the specified condition to the player
---@param condition E_TFCOND
---@param duration? number # optional (default = `-1`: infinite)
function Entity:AddCond(condition, duration) end

---Removes the specified condition from the player
---@param condition E_TFCOND
function Entity:RemoveCond(condition) end

---Whether the player is currently crit boosted by an external source
---@return boolean
---@nodiscard
function Entity:IsCritBoosted() end

---Returns the current crit multiplier of the player. See TF2 Crit Wiki for more info
---@return number
---@nodiscard
function Entity:GetCritMult() end

---For game mode where players can carry runes, returns the type of rune the player is carrying
---@return E_RuneType
---@nodiscard
function Entity:GetCarryingRuneType() end

---Returns the max health of the player, including any buffs from items or medics
---@return integer
---@nodiscard
function Entity:GetMaxBuffedHealth() end

---Returns the entity for the specified loadout slot. This can be used to get the hat entity for the slot, or the weapon entity for the slot
---@param slot E_LoadoutSlot
---@return Entity
---@nodiscard
function Entity:GetEntityForLoadoutSlot(slot) end

---Whether the player is currently in a freezecam after death
---@return boolean
function Entity:IsInFreezecam() end

--[[ Weapon entity methods ]]

---Returns whether the weapon is a weapon that can shoot projectiles or hitscan.
---@return boolean
---@nodiscard
function Entity:IsShootingWeapon() end

---Returns whether the weapon is a melee weapon.
---@return boolean
---@nodiscard
function Entity:IsMeleeWeapon() end

---Returns whether the weapon is a medigun, supports all types of mediguns.
---@return boolean
---@nodiscard
function Entity:IsMedigun() end

---Returns whether the server allow random crit for primary/secondary
---@return boolean
---@nodiscard
function Entity:CanRandomCrit() end

---Returns the loadout slot ID of the weapon.
---@return E_LoadoutSlot
---@nodiscard
function Entity:GetLoadoutSlot() end

---Returns the weapon ID of the weapon.
---@return E_WeaponBaseID
---@nodiscard
function Entity:GetWeaponID() end

---Returns whether the weapon's view model is flipped.
---@return boolean
---@nodiscard
function Entity:IsViewModelFlipped() end

--[[ Weapon shooting gun methods ]]

---@param player Entity
---@param vecOffset Vector3
---@param bHitTeammates boolean
---@param flEndDist number
---@return Vector3 vecSrc, Vector3 angForward
function Entity:GetProjectileFireSetup(player, vecOffset, bHitTeammates, flEndDist) end

---Returns the projectile type of the weapon, returns nil if the weapon is not a projectile weapon.
---@return E_ProjectileType
---@nodiscard
function Entity:GetWeaponProjectileType() end

---Returns the spread of the weapon, returns nil if the weapon is not a gun weapon.
---@return number? spread
---@nodiscard
function Entity:GetWeaponSpread() end

---Returns the projectile speed of the weapon, returns nil if the weapon is not a projectile weapon.
---Can return 0 if the weapon has the speed hardcoded somewhere else.
---In that case its up to you to figure out the speed.
---@return number? speed
---@nodiscard
function Entity:GetWeaponProjectileSpeed() end

---Returns the projectile gravity of the weapon, returns nil if the weapon is not a projectile weapon.
---Can return 0 if the weapon has the gravity hardcoded somewhere else.
---In that case its up to you to figure out the gravity.
---@return number? gravity
---@nodiscard
function Entity:GetWeaponProjectileGravity() end

---Returns the projectile spread of the weapon, returns nil if the weapon is not a projectile weapon.
---@return number? spread
---@nodiscard
function Entity:GetProjectileSpread() end

--[[ ChargeUpWeapon methods ]]

---Returns whether the weapon can be charged up.
---@return boolean
---@nodiscard
function Entity:CanCharge() end

---Returns the time the weapon started charging up, returns nil if the weapon is not a charge up weapon.
---@return number? time
---@nodiscard
function Entity:GetChargeBeginTime() end

---Returns the max charge time of the weapon, returns nil if the weapon is not a charge up weapon.
---@return number? maxTime
---@nodiscard
function Entity:GetChargeMaxTime() end

---Returns the current charge of the weapon, returns nil if the weapon is not a charge up weapon.
---@return number? charge
---@nodiscard
function Entity:GetCurrentCharge() end

--[[ Melee Weapon Methods ]]

---Returns the swing range of the weapon, returns nil if the weapon is not a melee weapon.
---@return integer
---@nodiscard
function Entity:GetSwingRange() end

---Returns the Trace object result of the weapon's swing. In simple terms, it simulates what would weapon hit if it was swung.
---@return Trace
---@nodiscard
function Entity:DoSwingTrace() end

---Returns the heal rate of the medigun, returns nil if the weapon is not a medigun.
---@return number
---@nodiscard
function Entity:GetMedigunHealRate() end

---Returns the healing stick range of the medigun, returns nil if the weapon is not a medigun.
---@return number
---@nodiscard
function Entity:GetMedigunHealingStickRange() end

---Returns the healing range of the medigun, returns nil if the weapon is not a medigun.
---@return number
---@nodiscard
function Entity:GetMedigunHealingRange() end

---Returns whether the medigun is allowed to heal the target, returns nil if the weapon is not a medigun.
---@param target Entity
---@return boolean
---@nodiscard
function Entity:IsMedigunAllowedToHealTarget(target) end

--[[ Weapon Crit Methods ]]

---Returns the current crit token bucket value.
---@return number
---@nodiscard
function Entity:GetCritTokenBucket() end

---Returns the current crit check count.
---@return integer
---@nodiscard
function Entity:GetCritCheckCount() end

---Returns the current crit seed request count.
---@return integer
---@nodiscard
function Entity:GetCritSeedRequestCount() end

---Returns the current crit seed.
---@return integer
---@nodiscard
function Entity:GetCurrentCritSeed() end

---Returns the time until the current rapid fire crit is over.
---@return number
---@nodiscard
function Entity:GetRapidFireCritTime() end

---Returns the time of the last rapid fire crit check.
---@return number
---@nodiscard
function Entity:GetLastRapidFireCritCheckTime() end

---Returns the base damage of the weapon.
---@return number
---@nodiscard
function Entity:GetWeaponBaseDamage() end

---Returns the weapon's current crit chance as a number from 0 to 1. This crit chance changes during gameplay based on player's recently dealt damage.
---@return number
---@nodiscard
function Entity:GetCritChance() end

---Calculates the cost of a crit
--
---use GetCritCost(GetCritTokenBucket,GetCritSeedRequestCount, GetCritCheckCount) to get the current cost of a crit
---@param tokenBucket number
---@param critSeedRequestCount number
---@param critCheckCount integer
---@return number
---@nodiscard
function Entity:GetCritCost(tokenBucket, critSeedRequestCount, critCheckCount) end

---This function estimates the observed crit chance. The observed crit chance is calculated on the server from the damage you deal across a game round. It is only rarely sent to the client, but is important for crit calculations.
---@return number
---@nodiscard
function Entity:CalcObservedCritChance() end

---Returns whether the given command number would result in a crit.
---@param commandNumber integer
---@return boolean
---@nodiscard
function Entity:IsAttackCritical(commandNumber) end

---Returns the round damage stats
---@return { total : integer, critical : integer, melee : integer }
---@nodiscard
function Entity:GetWeaponDamageStats() end

---Returns the weapon's attributes
---@return WeaponData
---@nodiscard
function Entity:GetWeaponData() end
