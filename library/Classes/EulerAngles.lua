---@meta

---A class that represents a set of Euler angles.
---@class EulerAngles
---@field x number
---@field y number
---@field z number
---@field pitch number
---@field yaw number
---@field roll number
---@operator unm: EulerAngles
---@operator add: EulerAngles
---@operator sub: EulerAngles
---@operator mul: EulerAngles
---@operator div: EulerAngles
---@operator idiv: EulerAngles
---@operator pow: EulerAngles
local EulerAngles = {}

---Returns the X, Y, and Z coordinates as a separate variables.
function EulerAngles:Unpack() end

---Reset the angles to 0.
function EulerAngles:Clear() end

---Get the forward vector of the angle.
---@return Vector3
---@nodiscard
function EulerAngles:Forward() end

---Get the right vector of the angle.
---@return Vector3
---@nodiscard
function EulerAngles:Right() end

---Get the up vector of the angle.
---@return Vector3
---@nodiscard
function EulerAngles:Up() end

---Normalize the angle.
function EulerAngles:Normalize() end

---Clamp the angle.
function EulerAngles:Clamp() end

---Create a new EulerAngles.
---@param pitch number
---@param yaw number
---@param roll number
---@return EulerAngles
---@nodiscard
function _G.EulerAngles(pitch, yaw, roll) end

