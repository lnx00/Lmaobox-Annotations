---@meta

---Received as the only argument in DispatchUserMessage callback.
---
---[View Docs](https://lmaobox.net/lua/Lua_Classes/UserMessage/)
---@class UserMessage
local UserMessage = {}

---Get the id of the [message](https://wiki.alliedmods.net/User_messages).
---@return E_UserMessage
---@nodiscard
function UserMessage:GetID() end

---Returns the [BitBuffer](lua://BitBuffer) object that contains the message data.
---@return BitBuffer
---@nodiscard
function UserMessage:GetBitBuffer() end

---Returns the length of the message in bits.
---@deprecated Use BitBuffer:GetDataBitsLength instead
---@return integer bits
---@nodiscard
function UserMessage:GetDataBits() end

---Returns the length of the message in bytes.
---@deprecated Use BitBuffer:GetDataBytesLength instead
---@return integer bytes
---@nodiscard
function UserMessage:GetDataBytes() end

---Sets the current bit position in the message.
---@deprecated Use BitBuffer:SetCurBit instead
---@param bit integer
function UserMessage:SetCurBit(bit) end

---Returns the current bit position in the message.
---@deprecated Use BitBuffer:GetCurBit instead
---@return integer
---@nodiscard
function UserMessage:GetCurBit() end

---Sets the position to the beginning of the message. \
---This is useful if you want to read the message multiple times.
---@deprecated Use BitBuffer:Reset instead
function UserMessage:Reset() end

---Reads a bit from the message.
---Returns bit, current bit position.
---@deprecated Use BitBuffer:ReadBit instead
---@return integer bit, integer pos
function UserMessage:ReadBit() end

---Reads a byte from the message.
---Returns integer, current bit position.
---@deprecated Use BitBuffer:ReadByte instead
---@return integer byte, integer pos
function UserMessage:ReadByte() end

---Reads n bit from the message.
---Returns float, current bit position.
---@deprecated Use BitBuffer:ReadFloat instead
---@param n integer? # optional (default = `32`)
---@return number float, integer pos
function UserMessage:ReadFloat(n) end

---Reads n bit from the message.
---Returns integer, current bit position.
---@deprecated Use BitBuffer:ReadInt instead
---@param n integer? # optional (default = `32`)
---@return integer int, integer pos
function UserMessage:ReadInt(n) end

---Reads a string from the message. \
---You must specify valid maxlen. \
---The string will be truncated if it is longer than maxlen. \
---Returns the string read as first return value, and current bit position as second return value.
---@deprecated Use BitBuffer:ReadString instead
---@param maxlen integer
---@return string str, integer pos
function UserMessage:ReadString(maxlen) end

---Writes a single bit to the message. \
---When writing, make sure that your current bit position is correct and that you do not overflow the message.
---@deprecated Use BitBuffer:WriteBit instead
---@param bit integer
function UserMessage:WriteBit(bit) end

---Writes a single byte to the message. \
---When writing, make sure that your current bit position is correct and that you do not overflow the message.
---@deprecated Use BitBuffer:WriteByte instead
---@param byte integer
function UserMessage:WriteByte(byte) end

---Writes a float to the message. \
---Default number of bits to write is 32 (4 bytes). For short, use 16, for long, use 64. \
---When writing, make sure that your current bit position is correct and that you do not overflow the message.
---@deprecated Use BitBuffer:WriteFloat instead
---@param float number
---@param n integer? # optional (default = `32`)
function UserMessage:WriteFloat(float, n) end

---Writes an integer to the message. \
---Default number of bits to write is 32 (4 bytes). For short, use 16, for long, use 64. \
---When writing, make sure that your current bit position is correct and that you do not overflow the message.
---@deprecated Use BitBuffer:WriteInt instead
---@param int integer
---@param n integer? # optional (default = `32`)
function UserMessage:WriteInt(int, n) end

---Writes string to the message. \
---1 character = 1 byte (8 bits) \
---When writing, make sure that your current bit position is correct and that you do not overflow the message.
---@deprecated Use BitBuffer:WriteString instead
---@param s string
function UserMessage:WriteString(s) end
