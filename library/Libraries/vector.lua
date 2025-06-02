---@meta

---The vector library provides a simple way to manipulate 3D vectors. \
---You can use both Lua tables and Vector3|ArrayVector instances as arguments. \
---The functions below showcase only the table-based option. \
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
---@param a Vector3|ArrayVector
---@param scalar number
---@return Vector3
---@nodiscard
function vector.Multiply(a, scalar) end

---Divide vector by scalar.
---@param a Vector3|ArrayVector
---@param scalar number
---@return Vector3
---@nodiscard
function vector.Divide(a, scalar) end

---Get vector length.
---@param a Vector3|ArrayVector
---@return integer
---@nodiscard
function vector.Length(a) end

---Get vector squared length.
---@param a Vector3|ArrayVector
---@return integer
---@nodiscard
function vector.LengthSqr(a) end

---Get distance between two vectors.
---@param a Vector3|ArrayVector
---@param b Vector3|ArrayVector
---@return integer
---@nodiscard
function vector.Distance(a, b) end

---Normalize vector in place; modifies the vector directly without returning it.
---@param a Vector3|ArrayVector
function vector.Normalize(a) end

---Get vector angles.
---@param a Vector3
---@return EulerAngles
---@nodiscard
function vector.Angles(a) end

---Get forward vector angle.
---@param a Vector3
---@return EulerAngles
---@nodiscard
function vector.AngleForward(a) end

---Get right vector angle.
---@param a Vector3
---@return EulerAngles
---@nodiscard
function vector.AngleRight(a) end

---Get up vector angle.
---@param a Vector3
---@return EulerAngles
---@nodiscard
function vector.AngleUp(a) end

---Normalize vector angles.
---@param a Vector3
---@return EulerAngles
---@nodiscard
function vector.AngleNormalize(a) end
