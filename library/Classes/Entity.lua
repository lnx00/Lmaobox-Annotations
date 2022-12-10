---@meta

---Represents an entity in the game world. Make sure to not store entities long term, they can become invalid over time - their methods will return nil in that case.
---@class Entity
local Entity = {}

---Returns whether the entity is valid. This is done automatically and all other functions will return nil if the entity is invalid.
---
---[See Example](../Examples/passing-entity.lua)
function Entity:IsValid() end

---Returns the name of the entity if its a player
---@return string|nil
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
function Entity:GetAbsOrigin() end

---Sets the absolute position of the entity
function Entity:SetAbsOrigin() end

---Returns mins of the entity, must be combined with origin
function Entity:GetMins() end

---Returns maxs of the entity, must be combined with origin
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
function Entity:EstimateAbsVelocity() end

---Returns the move type of the entity 
---@return MoveType
---@nodiscard
function Entity:GetMoveType() end

---Returns the hitbox surrounding box of the entity as table of Vector3 mins and maxs
function Entity:HitboxSurroundingBox() end

---Returns the hitbox surrounding box of the entity in entity space as table of Vector3 mins and maxs
function Entity:EntitySpaceHitboxSurroundingBox() end

---Returns world-transformed hitboxes of the entity as table of tables, each containing 2 entries of Vector3: mins and maxs positions of each hitbox. The currentTime argument is optional, by default 0, and can be changed if you want the transform to be based on a different time
---@param currentTime number
function Entity:GetHitboxes( currentTime ) end

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
function Entity:AttributeHookFloat( name, defaultValue ) end

---Returns the integer value of the attribute present on the entity
---@param name string
---@param defaultValue? number # optional (default = `1.0`)
function Entity:AttributeHookInt( name,defaultValue ) end

---Returns the float value of the given netvar
---@param ... string
---@return number|nil
---@nodiscard
function Entity:GetPropFloat(  ... ) end

---Returns the int value of the given netvar
---@param ... string
---@return integer|nil
---@nodiscard
function Entity:GetPropInt(  ... ) end

---Returns the bool value of the given netvar
---@param ... string
---@return boolean|nil
---@nodiscard
function Entity:GetPropBool(  ... ) end

---Returns the string value of the given netvar
---@param ... string
---@return string|nil
---@nodiscard
function Entity:GetPropString(  ... ) end

---Returns the vector value of the given netvar
---@param ... string
---@return Vector3|nil
---@nodiscard
function Entity:GetPropVector(  ... ) end

---Returns the Entity class of the given netvar, usually those that has prefix: ``m_hXXXX``
---@param ... string
---@return Entity|nil
---@nodiscard
function Entity:GetPropEntity(  ... ) end

---Sets the float value of the given netvar.
---@param value number
---@param ... string
function Entity:SetPropFloat( value,  ... ) end

---Sets the int value of the given netvar.
---@param value integer
---@param ... string
function Entity:SetPropInt( value,  ... ) end

---Sets the bool value of the given netvar.
---@param value boolean
---@param ... string
function Entity:SetPropBool( value,  ... ) end

---Set the entity value of the given netvar.
---@param value Entity
---@param ... string
function Entity:SetPropEntity( value,  ... ) end

---Set the vector value of the given netvar.
---@param value Vector3
---@param ... string
function Entity:SetPropVector( value,  ... ) end

---Returns a table of floats, index them with integers based on context of the netvar
function Entity:GetPropDataTableFloat(  ... ) end

---Returns a table of ints, index them with integers based on context of the netvar
function Entity:GetPropDataTableInt(  ... ) end

---Returns a table of entities, index them with integers based on context of the netvar
function Entity:GetPropDataTableEntity(  ... ) end

---Sets the number value of the given netvar at the given index.
---@param value number
---@param index integer
---@param ... string
function Entity:SetPropDataTableFloat( value, index,  ... ) end

---Sets the integer value of the given netvar at the given index.
---@param value integer
---@param index integer
---@param ... string
function Entity:SetPropDataTableInt( value, index,  ... ) end

---Sets the Entity value of the given netvar at the given index.
---@param value Entity
---@param index integer
---@param ... string
function Entity:SetPropDataTableEntity( value, index,  ... ) end

---Returns whether the player is in the specified condition. List of conditions in TF2 can be found
---@param condition TF2_COND
---@return boolean
---@nodiscard
function Entity:InCond( condition ) end

---Adds the specified condition to the player
---@param condition TF2_COND
---@param duration? number # optional (default = `-1`: infinite)
function Entity:AddCond( condition, duration ) end

---Removes the specified condition from the player
---@param condition TF2_COND
function Entity:RemoveCond( condition ) end

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
function Entity:GetEntityForLoadoutSlot( slot:integer ) end

---Whether the player is currently in a freezecam after death
function Entity:IsInFreezecam() end

---Returns whether the weapon is a weapon that can shoot projectiles or hitscan.
function Entity:IsShootingWeapon() end

---Returns whether the weapon is a melee weapon.
function Entity:IsMeleeWeapon() end

---Returns whether the weapon is a medigun, supports all types of mediguns.
function Entity:IsMedigun() end

---Returns whether the weapon can randomly crit in general, not in it's current state.
function Entity:CanRandomCrit() end

---Returns the loadout slot ID of the weapon.
function Entity:GetLoadoutSlot() end

---Returns the projectile type of the weapon, returns nil if the weapon is not a projectile weapon.
function Entity:GetWeaponProjectileType() end

---Returns whether the weapon's view model is flipped.
function Entity:IsViewModelFlipped() end

---Returns the swing range of the weapon, returns nil if the weapon is not a melee weapon.
function Entity:GetSwingRange() end

---Returns the Trace object result of the weapon's swing. In simple terms, it simulates what would weapon hit if it was swung.
function Entity:DoSwingTrace() end

---Returns the heal rate of the medigun, returns nil if the weapon is not a medigun.
function Entity:GetMedigunHealRate() end

---Returns the healing stick range of the medigun, returns nil if the weapon is not a medigun.
function Entity:GetMedigunHealingStickRange() end

---Returns the healing range of the medigun, returns nil if the weapon is not a medigun.
function Entity:GetMedigunHealingRange() end

---Returns whether the medigun is allowed to heal the target, returns nil if the weapon is not a medigun.
---@param target Entity
---@return boolean
function Entity:IsMedigunAllowedToHealTarget( target ) end

    ---Returns the current crit token bucket value.
function Entity:GetCritTokenBucket() end

---Returns the current crit check count.
function Entity:GetCritCheckCount() end

---Returns the current crit seed request count.
function Entity:GetCritSeedRequestCount() end

---Returns the current crit seed.
function Entity:GetCurrentCritSeed() end

---Returns the time until the current rapid fire crit is over.
function Entity:GetRapidFireCritTime() end

---Returns the time of the last rapid fire crit check.
function Entity:GetLastRapidFireCritCheckTime() end

---Returns the base damage of the weapon.
function Entity:GetWeaponBaseDamage() end

---Returns the weapon's current crit chance as a number from 0 to 1. This crit chance changes during gameplay based on player's recently dealt damage.
function Entity:GetCritChance() end

---
function Entity:GetCritCost( tokenBucket:number, critSeedRequestCount:number, critCheckCount:number ) end
---This function estimates the observed crit chance. The observed crit chance is calculated on the server from the damage you deal across a game round. It is only rarely sent to the client, but is important for crit calculations.
function Entity:CalcObservedCritChance() end

---Returns whether the given command number would result in a crit.
function Entity:IsAttackCritical( commandNumber:integer ) end

---Returns the current damage stats as a following table:
function Entity:GetWeaponDamageStats() end