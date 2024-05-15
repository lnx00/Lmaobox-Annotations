---@meta

---PhysicsObject is a class that represents a physics object. \
---It has a position, angle, velocity, angular velocity, and is affected by gravity and air resistance. \
---It can be simulated in time. Other parameters include class PhysicsObjectParameters.
---@class PhysicsObject
local PhysicsObject = {}

---Wakes up the physics object.
---It will become active in the physics environment and will be simulated in time if the physics environment is simulating.
function PhysicsObject:Wake() end

---Puts the physics object to sleep.
---It will become inactive in the physics environment and will not be simulated.
function PhysicsObject:Sleep() end

---Returns the position of the physics object as a Vector3 and the angle as a Vector3 second return value.
---@return Vector3 position, Vector3 angle
---@nodiscard
function PhysicsObject:GetPosition() end

---Sets the position and angle of the physics object. \
---If isTeleport is true, the physics object will be teleported to the new position and angle.
---@param position Vector3
---@param angle Vector3
---@param isTeleport boolean
function PhysicsObject:SetPosition(position, angle, isTeleport) end

---Returns the velocity of the physics object as a Vector3 and the angular velocity as a Vector3 second return value.
---@return Vector3 velocity, Vector3 angularVelocity
---@nodiscard
function PhysicsObject:GetVelocity() end

---Sets the velocity and angular velocity of the physics object.
---@param velocity Vector3
---@param angularVelocity Vector3
function PhysicsObject:SetVelocity(velocity, angularVelocity) end

---Adds the velocity and angular velocity to the physics object.
---@param velocity Vector3
---@param angularVelocity Vector3
function PhysicsObject:AddVelocity(velocity, angularVelocity) end

---Outputs debug information about the physics object to the console.
function PhysicsObject:OutputDebugInfo() end
