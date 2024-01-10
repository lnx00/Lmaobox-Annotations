---@meta

---Represents a game event that was sent from the server. \
---For a list of game events for Source games and TF2 see the [GameEvent List](https://wiki.alliedmods.net/Team_Fortress_2_Events).
---@class GameEvent
local GameEvent = {}

---Get the name of the game event.
---@return string
---@nodiscard
function GameEvent:GetName() end

---Get the string from the game event.
---@param field string
---@return string
---@nodiscard
function GameEvent:GetString(field) end

---Get the int from the game event.
---@param field string
---@return integer
---@nodiscard
function GameEvent:GetInt(field) end

---Get the float from the game event.
---@param field string
---@return number
---@nodiscard
function GameEvent:GetFloat(field) end

---Set the string from the game event.
---@param field string
---@param value string
function GameEvent:SetString(field, value) end

---Set the int from the game event.
---@param field string
---@param value integer
function GameEvent:SetInt(field, value) end

---Set the float from the game event.
---@param field string
---@param value number
function GameEvent:SetFloat(field, value) end

---Set the boolean from the game event.
---@param field string
---@param value boolean
function GameEvent:SetBool(field, value) end
