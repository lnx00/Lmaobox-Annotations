---@meta

---Received as the only argument in DispatchUserMessage callback.
---@class UserMessage
local UserMessage = {}

---Get the id of the message.
--
---[TF2 User Messages](https://wiki.alliedmods.net/User_messages)
---@return UserMessageID
---@nodiscard
function UserMessage:GetID() end

---Returns the length of the message in bits
---@return integer
---@nodiscard
function UserMessage:GetDataBits() end

---Returns the length of the message in bytes
---@return integer
---@nodiscard
function UserMessage:GetDataBytes() end

---Returns the current bit position in the message.
---@return integer
---@nodiscard
function UserMessage:GetCurBit() end

---Sets the current bit position in the message.
---@param bit integer
function UserMessage:SetCurBit(bit) end

---Sets the position to the beginning of the message
--
---This is useful if you want to read the message multiple times
function UserMessage:Reset() end

---Reads a bit from the message.
--
---Returns bit, current bit position
---@return integer, integer
function UserMessage:ReadBit() end

---Reads a byte from the message.
--
---Returns integer, current bit position
---@return integer, integer
function UserMessage:ReadByte() end

---Reads n bit from the message.
--
---Returns float, current bit position
---@param n integer? # optional number of bits to read (default = ``32``)
---@return number, integer
function UserMessage:ReadFloat(n) end

---Reads n bit from the message.
--
---Returns integer, current bit position
---@param n integer? # optional number of bits to read (default = ``32``)
---@return integer, integer
function UserMessage:ReadInt(n) end

---Reads n byte from the message.
--
---Returns string, current bit position
---@param n integer
---@return string, integer
function UserMessage:ReadString(n) end

--- Writes a single bit to the message.
--
--- When writing, make sure that your current bit position is correct and that you do not overflow the message.
function UserMessage:WriteBit() end

--- Writes a single byte to the message.
--
--- When writing, make sure that your current bit position is correct and that you do not overflow the message.
---@param byte integer
function UserMessage:WriteByte(byte) end

--- Writes a float to the message.
--
--- Default number of bits to write is 32 (4 bytes). For short, use 16, for long, use 64.
--
--- When writing, make sure that your current bit position is correct and that you do not overflow the message.
---@param float number
---@param n integer? # optional number of bits to write (default = ``32``)
function UserMessage:WriteFloat(float, n) end

--- Writes an integer to the message.
--
--- Default number of bits to write is 32 (4 bytes). For short, use 16, for long, use 64.
--
--- When writing, make sure that your current bit position is correct and that you do not overflow the message.
---@param int integer
---@param n integer? # optional number of bits to write (default = ``32``)
function UserMessage:WriteInt(int, n) end

--- Writes string to the message.
--
--- 1 character = 1 byte (8 bits)
--
--- When writing, make sure that your current bit position is correct and that you do not overflow the message.
function UserMessage:WriteString(s) end
