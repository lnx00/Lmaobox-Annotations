---@meta

---Represents a collision model for a physics object. \
---[View Docs](https://lmaobox.net/lua/Lua_Classes/PhysicsCollisionModel/)
---@class PhysicsCollisionModel
local PhysicsCollisionModel = {}

---Returns the mass center of the collision model as a `Vector3`.
---@return Vector3 massCenter
---@nodiscard
function PhysicsCollisionModel:GetMassCenter() end
