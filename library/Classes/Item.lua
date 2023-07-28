---@meta

---Represents an item in player's inventory.
---@class Item
local Item = {}

---Returns true if the item is valid. There are instances where an item in the inventory is not valid and you should account for them. Otherwise, methods will return nil.
---@return boolean
---@nodiscard
function Item:IsValid() end

---Returns the name of the item. This is the name that is displayed in the inventory and can be custom.
---@return string
---@nodiscard
function Item:GetName() end

---Returns the item's definition index. Can be used to get the item's definition.
---@return integer
---@nodiscard
function Item:GetDefIndex() end

---Returns the item's definition as the ItemDefinition object.
---@return ItemDefinition
---@nodiscard
function Item:GetItemDefinition() end

---Returns the item's level.
---@return integer
---@nodiscard
function Item:GetLevel() end

---Returns the item's ID. This is a unique 64bit ID for the item that identifies it across the economy.
---@return integer
---@nodiscard
function Item:GetItemID() end

---Returns the item's position in the inventory.
---@return integer
---@nodiscard
function Item:GetInventoryPosition() end

---Returns true if the item is equipped for the given class.
---@param classID ETFClass
---@return boolean
---@nodiscard
function Item:IsEquippedForClass(classID) end

---Returns the item's backpack image texture ID. Some items may not have it, in which case, result is -1.
---@return integer
---@nodiscard
function Item:GetImageTextureID() end

---Returns the item's attributes as a table where keys are AttributeDefinition objects and values are the values of the attributes.
---@return table<AttributeDefinition, any>?
---@nodiscard
function Item:GetAttributes() end

---Sets the value of the given attribute by it's definition. The value must be the correct type for the given attribute definition.
---@param attrDef AttributeDefinition
---@param value any
function Item:SetAttribute(attrDef, value) end

---Sets the value of the given attribute by it's name. The value must be the correct type for the given attribute definition.
---@param attrName string
---@param value any
function Item:SetAttribute(attrName, value) end

---Removes the given attribute by it's definition.
---@param attrDef AttributeDefinition
function Item:RemoveAttribute(attrDef) end

--Removes the given attribute by it's name.
---@param attrName string
function Item:RemoveAttribute(attrName) end
