---@meta

---The inventory library is used to access the player's inventory and the items in it. \
---Every item is of type Item.  \
---[View Docs](https://lmaobox.net/lua/Lua_Libraries/inventory/)
---@class inventory
inventory = {}

---Callback is called for each item in the inventory. \
---The item is passed as the first argument and is of type Item.
---@param callback fun(item: ItemDefinition)
function inventory.Enumerate(callback) end

---Returns the item at the given position in the inventory.
---@param position number
---@return Item
---@nodiscard
function inventory.GetItemByPosition(position) end

---Returns the maximum number of items that can be in the inventory.
---@return integer
---@nodiscard
function inventory.GetMaxItemCount() end

---Returns the item with the given 64bit item ID.
---@param id integer
---@return Item
---@nodiscard
function inventory.GetItemByItemID(id) end

---Returns the item that is in the given slot in the given class' loadout slot.
---@param id integer
---@param slot integer
function inventory.GetItemInLoadout(id, slot) end

---Equips the item that is in the given slot in the given class' loadout slot. \
---@param item Item
---@param id integer
---@param slot integer
function inventory.EquipItemInLoadout(item, id, slot) end

---Creates a fake item with the given parameters. The item definition is of type ItemDefinition. \
---The pickupOrPosition parameter is the pickup method, if isNewItem parameter is true, and the inventory position of the item if isNewItem parameter is false. \
---The `itemID64` is the unique 64-bit item ID of the item, you can use -1 to generate a random ID. \
---For `quality` and `origin` you can use constants. The `level` is the item's level.
---@param itemdef ItemDefinition
---@param pickupOrPosition integer
---@param itemID64 integer
---@param quality integer
---@param origin integer
---@param level integer
---@param isNewItem boolean
function inventory.CreateFakeItem(itemdef, pickupOrPosition, itemID64, quality, origin, level, isNewItem) end

return inventory