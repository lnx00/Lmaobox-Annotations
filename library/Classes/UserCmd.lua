---@meta

---@class UserCmd
---@field command_number integer
---@field tick_count integer
---@field viewangles EulerAngles
---@field aimdirection Vector3
---@field forwardmove number
---@field sidemove number
---@field upmove number
---@field buttons integer
---@field impulse integer
---@field weaponselect integer
---@field weaponsubtype integer
---@field random_seed integer
---@field mousedx integer
---@field mousedy integer
---@field hasbeenpredicted boolean
---@field headangles EulerAngles
---@field headoffset Vector3
---@field sendpacket boolean
--- Represents a user (movement) command about to be sent to the server.
--
--- Fields are modifiable directly.
--
--- [UserCmd](https://developer.valvesoftware.com/wiki/Usercmd)
local UserCmd = {}

---Returns the viewangles.
---@return number, number, number
---@nodiscard
function UserCmd:GetViewAngles() end

---Set the viewangles.
---@param pitch number
---@param yaw number
---@param roll number
function UserCmd:SetViewAngles(pitch, yaw, roll) end

---Set the value of sendpacket.
---@param value boolean
function UserCmd:SetSendPacket(value) end

---Set the buttons.
--
---When setting a button make sure to GetButtons() first and add any additional button using the bitwise operator OR.
---@param buttons integer
function UserCmd:SetButtons(buttons) end

---Returns the buttons.
---@return integer
---@nodiscard
function UserCmd:GetButtons() end

---Set the forwardmove value.
---@param value number
function UserCmd:SetForwardMove(value) end

---Return the amount of forward move.
---@return number
---@nodiscard
function UserCmd:GetForwardMove() end

---Move to the side, accepts float value.
---@param value number
function UserCmd:SetSideMove(value) end

---Returns the amount of side move.
---@return number
---@nodiscard
function UserCmd:GetSideMove() end

---Move up, accepts float value.
---@param value number
function UserCmd:SetUpMove(value) end

---Returns the amount of up move.
---@return number
---@nodiscard
function UserCmd:GetUpMove() end

---Return the sendpacket value.
---@return boolean
---@nodiscard
function UserCmd:GetSendPacket() end