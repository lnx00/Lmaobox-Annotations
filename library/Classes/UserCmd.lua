---@meta

---Represents a user (movement) command about to be sent to the server. \
---Fields are modifiable directly. \
---[UserCmd](https://developer.valvesoftware.com/wiki/Usercmd)
---@class UserCmd
---@field command_number integer # The number of the command.
---@field tick_count integer # The current tick count.
---@field viewangles EulerAngles # The view angles of the player.
---@field forwardmove number # The forward movement of the player.
---@field sidemove number # The sideways movement of the player.
---@field upmove number # The upward movement of the player.
---@field buttons integer # The buttons that are pressed. Masked with bits from IN_* enum
---@field impulse integer # The impulse command that was issued.
---@field weaponselect integer # The weapon id that is selected.
---@field weaponsubtype integer # The subtype of the weapon.
---@field random_seed integer # The random seed of the command.
---@field mousedx integer # The mouse delta in the x direction.
---@field mousedy integer # The mouse delta in the y direction.
---@field hasbeenpredicted boolean # Whether the command has been predicted.
---@field sendpacket boolean # Whether the command should be sent to the server or choked.
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
