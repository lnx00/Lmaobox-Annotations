Set unusual effect and name of item

```lua
local nameAttr = itemschema.GetAttributeDefinitionByName( "custom name attr" )
local firstItem = inventory.GetItemByPosition( 1 )

-- Set the unusual effect to rotating flames
firstItem:SetAttribute( "attach particle effect", 33 ) 

-- Set the custom name to "Dumb dumb item"
firstItem:SetAttribute( nameAttr, "Dumb dumb item" ) 

local item = inventory.GetItemByPosition( 1 )for def, v in pairs( item:GetAttributes() ) do
    print( def:GetName() .. " : " .. tostring( v ) )
end
```
