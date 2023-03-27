---@meta

---Return value of engine.TraceLine and engine.TraceHull functions.
--
---You can read the VALVe wiki for more information on [trace result](https://developer.valvesoftware.com/wiki/UTIL_TraceLine#trace_t_.26tr).
---@class Trace
---@field fraction number
---@field entity Entity
---@field plane Vector3
---@field contents integer
---@field hitbox EHitbox
---@field hitgroup integer
---@field allsolid boolean
---@field startsolid boolean
---@field startpos Vector3
---@field endpos Vector3
local Trace = {}
