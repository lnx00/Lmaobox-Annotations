---@meta

---PhysicsSolid is a class that represents a solid of a given model. \
---It is used to create a physics object. \
---[View Docs](https://lmaobox.net/lua/Lua_Classes/PhysicsSolid/)
---@class PhysicsSolid
local PhysicsSolid = {}

---Returns the name of the solid.
---@return string
---@nodiscard
function PhysicsSolid:GetName() end

---Returns the surface property name of the solid.
---@return string
---@nodiscard
function PhysicsSolid:GetSurfacePropName() end

---Returns the PhysicsObjectParameters object of the solid.
---@return PhysicsObjectParameters
---@nodiscard
function PhysicsSolid:GetObjectParameters() end
