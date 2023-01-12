Enumerate all attributes

```lua
itemschema.EnumerateAttributes( function( attrDef )   
 print( attrDef:GetName() ..": " ..tostring( attrDef:GetID() ) )
end )
```
