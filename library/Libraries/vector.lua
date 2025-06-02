---@meta

---The vector library provides a simple way to manipulate 3D vectors. \
---You can use both Lua tables and Vector3|ArrayVector instances as arguments. \
---The functions below showcase only the table-based option.
---
---[View Docs](https://lmaobox.net/lua/Lua_Libraries/vector/)
---@class vector
vector = {}

---@alias ArrayVector { [1]: integer, [2]: integer, [3]: integer }

---Add two vectors.
---@param a Vector3|ArrayVector
---@param b Vector3|ArrayVector
---@return Vector3
---@nodiscard
function vector.Add(a, b) end

---Subtract two vectors.
---@param a Vector3|ArrayVector
---@param b Vector3|ArrayVector
---@return Vector3
---@nodiscard
function vector.Subtract(a, b) end

---Multiply vector by scalar.
---@param vec Vector3|ArrayVector
---@param scalar number
---@return Vector3
---@nodiscard
function vector.Multiply(vec, scalar) end

---Divide vector by scalar.
---@param vec Vector3|ArrayVector
---@param scalar number
---@return Vector3
---@nodiscard
function vector.Divide(vec, scalar) end

---Get vector length.
---@param vec Vector3|ArrayVector
---@return integer
---@nodiscard
function vector.Length(vec) end

---Get vector squared length.
---@param vec Vector3|ArrayVector
---@return integer
---@nodiscard
function vector.LengthSqr(vec) end

---Get distance between two vectors.
---@param a Vector3|ArrayVector
---@param b Vector3|ArrayVector
---@return integer
---@nodiscard
function vector.Distance(a, b) end

---Normalize vector in place; modifies the vector directly without returning it.
---@param vec Vector3|ArrayVector
function vector.Normalize(vec) end

---Get vector angles.
---@param vec Vector3
---@return EulerAngles
---@nodiscard
function vector.Angles(vec) end

---Get forward vector angle.
---@param vec Vector3
---@return EulerAngles
---@nodiscard
function vector.AngleForward(vec) end

---Get right vector angle.
---@param vec Vector3
---@return EulerAngles
---@nodiscard
function vector.AngleRight(vec) end

---Get up vector angle.
---@param vec Vector3
---@return EulerAngles
---@nodiscard
function vector.AngleUp(vec) end

---Normalize vector angles.
---@param vec Vector3
---@return EulerAngles
---@nodiscard
function vector.AngleNormalize(vec) end
