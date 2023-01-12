 Draw all player models using AmmoBox material

```lua
local ammoboxMaterial = materials.Find( "models/items/ammo_box2" )

local function onDrawModel( drawModelContext )
    local entity = drawModelContext:GetEntity()

    if entity:GetClass() == "CTFPlayer" then
        drawModelContext:ForcedMaterialOverride( ammoboxMaterial )
    end
end

callbacks.Register("DrawModel", "hook123", onDrawModel) 

```
