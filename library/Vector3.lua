---@meta

---@class Vector3
---@field x number
---@field y number
---@field z number
---@operator unm: Vector3
---@operator add: Vector3
---@operator sub: Vector3
---@operator mul: Vector3
---@operator div: Vector3
---@operator idiv: Vector3
---@operator pow: Vector3
Vector3 = {}

---Returns the X, Y, and Z coordinates as a separate variables.
---@return number, number, number
---@nodiscard
function Vector3:Unpack() end

---Get length of the vector.
---@return number
---@nodiscard
function Vector3:Length() end

---Get the squared length of the vector.
---@return number
---@nodiscard
function Vector3:LengthSqr() end

---Get 2D length of the vector.
---@return number
---@nodiscard
function Vector3:Length2D() end

---Get the squared 2D length of the vector.
---@return number
---@nodiscard
function Vector3:Length2DSqr() end

---Get the dot product.
---@param vec Vector3
---@return number
---@nodiscard
function Vector3:Dot(vec) end

---Get the cross product.
---@param vec Vector3
---@return Vector3
---@nodiscard
function Vector3:Cross(vec) end

---Clear out the vector.
function Vector3:Clear() end

---Normalize the vector.
function Vector3:Normalize() end

---Get the right value of the vector.
---@return Vector3
---@nodiscard
function Vector3:Right() end

---Get the right value from the vector.
---@return Vector3
---@nodiscard
function Vector3:Up() end

---Returns an angle representing the normal of the vector.
---@return EulerAngles
---@nodiscard
function Vector3:Angles() end

---Create a new Vector3.
---@param x number
---@param y number
---@param z number
---@return Vector3
---@nodiscard
function Vector3(x, y, z) end

return Vector3
