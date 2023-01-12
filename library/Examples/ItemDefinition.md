Get the name of active weapon

```lua
local me = entities.GetLocalPlayer()
local activeWeapon = me:GetPropEntity( "m_hActiveWeapon" )
if activeWeapon ~= nil then
    local itemDefinitionIndex = activeWeapon:GetPropInt( "m_iItemDefinitionIndex" )
    local itemDefinition = itemschema.GetItemDefinitionByID( itemDefinitionIndex )
    local weaponName = itemDefinition:GetName()
    print( weaponName )
end
local me = entities.GetLocalPlayer()
local activeWeapon = me:GetPropEntity( "m_hActiveWeapon" )
local itemDef = itemschema.GetItemDefinitionByID( activeWeapon:GetPropInt( "m_iItemDefinitionIndex" ) )
local attributes = itemDef:GetAttributes()for attrDef, value in pairs( attributes ) do
    print( attrDef:GetName() .. ": " .. tostring( value ) )
end
```
