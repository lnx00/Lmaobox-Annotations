Create a material, and change ignorez to false

```lua
kv = [["VertexLitGeneric"
{
    "$basetexture"  "vgui/white_additive"
    "$ignorez" "1"
}]]
myMaterial = materials.Create( "myMaterial", kv )
myMaterial:SetMaterialVarFlag( MATERIAL_VAR_IGNOREZ, false )
```
