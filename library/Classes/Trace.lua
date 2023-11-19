---@meta

---Return value of engine.TraceLine and engine.TraceHull functions.
---You can read the Valve wiki for more information on [trace result](https://developer.valvesoftware.com/wiki/UTIL_TraceLine#trace_t_.26tr).
---@class Trace
---@field fraction number # Fraction of the trace that was completed.
---@field entity Entity # The entity that was hit.
---@field plane Vector3 # Plane normal of the surface hit.
---@field contents integer # Contents of the surface hit.
---@field hitbox E_Hitbox # Hitbox that was hit.
---@field hitgroup integer # Hitgroup that was hit.
---@field allsolid boolean # Whether the trace completed in all solid.
---@field startsolid boolean # Whether the trace started in a solid.
---@field startpos Vector3 # The start position of the trace.
---@field endpos Vector3 # The end position of the trace.
local Trace = {}
