---@meta

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
