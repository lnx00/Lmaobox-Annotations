---@meta

---Return value of engine.TraceLine and engine.TraceHull functions.
--
---You can read the VALVe wiki for more information on [trace result](https://developer.valvesoftware.com/wiki/UTIL_TraceLine#trace_t_.26tr).
---@class Trace
---@field startpos Vector3
---@field endpos Vector3
---@field plane Plane
---@field fraction number
---@field contents integer
---@field dispFlags integer
---@field allSolid boolean
---@field startsolid boolean
---@field fractionleftsolid number
---@field surface Surface
---@field hitgroup integer
---@field physicsbone integer
---@field entity Entity
---@field hitbox TF2_HITBOX

local Trace = {}
