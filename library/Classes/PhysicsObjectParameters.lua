---@meta

---This is a class that contains parameters for a physics object. \
---You can use this to set the mass, drag, and other parameters of a physics object.
---@class PhysicsObjectParameters
---@field mass number # The mass of the physics object.
---@field inertia number # The inertia of the physics object.
---@field damping number # The damping of the physics object.
---@field rotdamping number # The rotational damping of the physics object.
---@field rotertiaLimit number # The rotational inertia limit of the physics object.
---@field volume number # The volume of the physics object.
---@field dragCoefficient number # The drag coefficient of the physics object.
---@field enableCollisions boolean # Whether or not the physics object should collide with other physics objects.
local PhysicsObjectParameters = {}
