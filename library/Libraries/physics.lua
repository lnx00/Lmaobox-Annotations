---@meta

---This is a library for physics calculations in TF2. \
---You can use this to calculate the trajectory of projectiles,
---or perform any sort of physics calculations on physics objects in time,
---in your own environment, or in TF2's environment.
---
---[View Docs](https://lmaobox.net/lua/Lua_Libraries/physics/)
---@class physics
physics = {}

---Creates a new physics environment of class PhysicsEnvironment. \
---By default it has no gravity, and no air resistance and no collisions.
---@return PhysicsEnvironment
---@nodiscard
function physics.CreateEnvironment() end

---Destroys a physics environment.
---@param environment PhysicsEnvironment
function physics.DestroyEnvironment(environment) end

---Returns the default physics environment. \
---This is the environment that TF2 client uses for clientside physics calculations. \
---Wouldnt recommend using, can cause odd side effects, but im not your mom.
---@return PhysicsEnvironment
---@nodiscard
function physics.DefaultEnvironment() end

---Creates a collision model from a bounding box.
---@param mins Vector3
---@param maxs Vector3
---@return PhysicsCollisionModel
---@nodiscard
function physics.BBoxToCollisionModel(mins, maxs) end

---Creates a PhysicsSolid and a PhysicsCollisionModel from a model name.
---@param modelName string
---@return PhysicsSolid, PhysicsCollisionModel
---@nodiscard
function physics.ParseModelByName(modelName) end

---Creates a PhysicsObjectParameters object with default values.
---@return PhysicsObjectParameters
---@nodiscard
function physics.DefaultObjectParameters() end

return physics
