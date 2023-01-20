---@meta

---Represents an entity in the game world.
--
---Make sure to not store entities long term, they can become invalid over time - their methods will return nil in that case.
---@class Entity
local Entity = {}

---Returns whether the entity is valid. This is done automatically and all other functions will return nil if the entity is invalid.
--
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
---@return TF2_TEAM
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
---@return MoveType
---@nodiscard
function Entity:GetMoveType() end

---Returns the hitbox surrounding box of the entity as table of Vector3 mins and maxs
---@return {[1]: Vector3, [2]: Vector3}
---@nodiscard
function Entity:HitboxSurroundingBox() end

---Returns the hitbox surrounding box of the entity in entity space as table of Vector3 mins and maxs
---@return {[1]: Vector3, [2]: Vector3}
---@nodiscard
function Entity:EntitySpaceHitboxSurroundingBox() end

---Returns world-transformed hitboxes of the entity as table of tables, each containing 2 entries of Vector3: mins and maxs positions of each hitbox. The currentTime argument is optional, by default 0, and can be changed if you want the transform to be based on a different time
---@param currentTime? number # optional (default = `0`)
---@return table<TF2_HITBOX, {[1]: Vector3, [2]: Vector3}>
---@nodiscard
function Entity:GetHitboxes(currentTime) end

---Returns true if the entity is dormant (not being updated). Dormant entities are not drawn and shouldn't be interacted with.
---@return boolean
---@nodiscard
function Entity:IsDormant() end

---If the entity is an item that can be in player's inventory, such as a wearable or a weapon, returns the inventory item as Item
---@return Item
---@nodiscard
function Entity:ToInventoryItem() end

---Returns the number value of the attribute present on the entity
---@param name string
---@param defaultValue? number # optional (default = `1.0`)
function Entity:AttributeHookFloat(name, defaultValue) end

---Returns the integer value of the attribute present on the entity
---@param name string
---@param defaultValue? number # optional (default = `1.0`)
function Entity:AttributeHookInt(name, defaultValue) end

---Returns the float value of the given netvar
---@vararg string
---@return number
---@nodiscard
function Entity:GetPropFloat(...) end

---Returns the int value of the given netvar
---@vararg string
---@return integer
---@nodiscard
function Entity:GetPropInt(...) end

---Returns the bool value of the given netvar
---@vararg string
---@return boolean
---@nodiscard
function Entity:GetPropBool(...) end

---Returns the string value of the given netvar
---@vararg string
---@return string
---@nodiscard
function Entity:GetPropString(...) end

---Returns the vector value of the given netvar
---@vararg string
---@return Vector3
---@nodiscard
function Entity:GetPropVector(...) end

---Returns the Entity class of the given netvar, usually those that has prefix: ``m_hXXXX``
---@vararg string
---@return Entity handle
---@nodiscard
function Entity:GetPropEntity(...) end

---Sets the float value of the given netvar.
---@param value number
---@vararg string
function Entity:SetPropFloat(value, ...) end

---Sets the int value of the given netvar.
---@param value integer
---@vararg string
function Entity:SetPropInt(value, ...) end

---Sets the bool value of the given netvar.
---@param value boolean
---@vararg string
function Entity:SetPropBool(value, ...) end

---Set the entity value of the given netvar.
---@param value Entity
---@vararg string
function Entity:SetPropEntity(value, ...) end

---Set the vector value of the given netvar.
---@param value Vector3
---@vararg string
function Entity:SetPropVector(value, ...) end

---Returns a table of floats, index them with integers based on context of the netvar
---@vararg string
---@return table<integer, number>
function Entity:GetPropDataTableFloat(...) end

---Returns a table of ints, index them with integers based on context of the netvar
---@vararg string
---@return table<integer, integer>
function Entity:GetPropDataTableInt(...) end

---Returns a table of entities, index them with integers based on context of the netvar
---@vararg string
---@return table<integer, Entity>
function Entity:GetPropDataTableEntity(...) end

---Sets the number value of the given netvar at the given index.
---@param value number
---@param index integer
---@vararg string
function Entity:SetPropDataTableFloat(value, index, ...) end

---Sets the integer value of the given netvar at the given index.
---@param value integer
---@param index integer
---@vararg string
function Entity:SetPropDataTableInt(value, index, ...) end

---Sets the Entity value of the given netvar at the given index.
---@param value Entity
---@param index integer
---@vararg string
function Entity:SetPropDataTableEntity(value, index, ...) end

---Returns whether the player is in the specified condition. List of conditions in TF2 can be found
---@param condition TF2_COND
---@return boolean
---@nodiscard
function Entity:InCond(condition) end

---Adds the specified condition to the player
---@param condition TF2_COND
---@param duration? number # optional (default = `-1`: infinite)
function Entity:AddCond(condition, duration) end

---Removes the specified condition from the player
---@param condition TF2_COND
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
---@return RuneType
---@nodiscard
function Entity:GetCarryingRuneType() end

---Returns the max health of the player, including any buffs from items or medics
---@return integer
---@nodiscard
function Entity:GetMaxBuffedHealth() end

---Returns the entity for the specified loadout slot. This can be used to get the hat entity for the slot, or the weapon entity for the slot
---@param slot LoadoutSlot
---@return Entity
---@nodiscard
function Entity:GetEntityForLoadoutSlot(slot) end

---Whether the player is currently in a freezecam after death
---@return boolean
function Entity:IsInFreezecam() end

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
---@return LoadoutSlot
---@nodiscard
function Entity:GetLoadoutSlot() end

---Returns the projectile type of the weapon, returns nil if the weapon is not a projectile weapon.
---@return ProjectileType
---@nodiscard
function Entity:GetWeaponProjectileType() end

---Returns whether the weapon's view model is flipped.
---@return boolean
---@nodiscard
function Entity:IsViewModelFlipped() end

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
---@class RoundDamageStats
---@field total integer
---@field critical integer
---@field melee integer
---@return RoundDamageStats
---@nodiscard
function Entity:GetWeaponDamageStats() end

---Returns the weapon's attributes
---@return WeaponData
---@nodiscard
function Entity:GetWeaponData() end