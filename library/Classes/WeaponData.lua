---@meta

---Contains variables related to specifications of a weapon, such as firing speed, number of projectiles, etc. \
---Some of them may not be used, or may be wrong.
---@class WeaponData
---@field damage integer
---@field bulletsPerShot integer
---@field range number
---@field spread number
---@field punchAngle number
---@field timeFireDelay number
---@field timeIdle number
---@field timeIdleEmpty number
---@field timeReloadStart number
---@field timeReload number
---@field drawCrosshair number
---@field projectile integer # Represents projectile id
---@field ammoPerShot integer
---@field projectileSpeed number
---@field smackDelay number
---@field useRapidFireCrits boolean
local WeaponData = {}
