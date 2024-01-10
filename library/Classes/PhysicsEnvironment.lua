---@meta

---PhysicsEnvironment is a class that represents a physics environment. \
---It has its own gravity, air resistance, and collision rules. \
---It contains physics objects that can be simulated in time.
---@class PhysicsEnvironment
local PhysicsEnvironment = {}

---Sets the gravity of the physics environment.
---@param gravity Vector3
function PhysicsEnvironment:SetGravity(gravity) end

---Returns the gravity of the physics environment as a Vector3.
---@return Vector3
---@nodiscard
function PhysicsEnvironment:GetGravity() end

---Sets the air density of the physics environment.
---@param airDensity number
function PhysicsEnvironment:SetAirDensity(airDensity) end

---Returns the air density of the physics environment.
---@return number
---@nodiscard
function PhysicsEnvironment:GetAirDensity() end

---Simulates the physics environment in time by the given delta time.
---@param deltaTime number
function PhysicsEnvironment:Simulate(deltaTime) end

---Returns whether the physics environment is currently simulating.
---@return boolean
---@nodiscard
function PhysicsEnvironment:IsInSimulation() end

---Returns the current simulation time of the physics environment.
---@return number
---@nodiscard
function PhysicsEnvironment:GetSimulationTime() end

---Returns the current simulation timestep of the physics environment.
---@return number
---@nodiscard
function PhysicsEnvironment:GetSimulationTimestep() end

---Sets the simulation timestep of the physics environment.
---@param timestep number
function PhysicsEnvironment:SetSimulationTimestep(timestep) end

---Returns a table of all active physics objects in the physics environment, as PhysicsObject objects.
---@return PhysicsObject[]
---@nodiscard
function PhysicsEnvironment:GetActiveObjects() end

---Resets the simulation clock of the physics environment.
function PhysicsEnvironment:ResetSimulationClock() end

---Creates a physics object from a collision model, surface property name, and physics object parameters.
---Returns a PhysicsObject object.
---Objects is created asleep, and must be woken up before simulation by calling PhysicsObject:Wake().
---@param collisionModel PhysicsCollisionModel
---@param surfacePropertyName string
---@param objectParams PhysicsObjectParameters
---@return PhysicsObject
---@nodiscard
function PhysicsEnvironment:CreatePolyObject(collisionModel, surfacePropertyName, objectParams) end

---Destroys a physics object.
---@param object PhysicsObject
function PhysicsEnvironment:DestroyObject(object) end
