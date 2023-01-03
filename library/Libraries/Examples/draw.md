Draw an image

```lua
-- in %localappdata% folder, add a file: lmaobox.png
local lmaoboxTexture = draw.CreateTexture( "lmaobox.png" ) 

callbacks.Register("Draw", function()
    local w, h = draw.GetScreenSize()
    local tw, th = draw.GetTextureSize( lmaoboxTexture )

    draw.TexturedRect( lmaoboxTexture, w/2 - tw/2, h/2 - th/2, w/2 + tw/2, h/2 + th/2 )
end)

```

Add font resource

```lua
-- in Team Fortress 2 folder, add a font file: Custom.ttf
-- make sure `Font name` is Custom in Custom.ttf
draw.AddFontResource("Custom.ttf")
local myfont = draw.CreateFont("Custom", 15, 800, FONTFLAG_CUSTOM)
```

Drawing a white square with lines

```lua
local function doDraw()
    if engine.Con_IsVisible() or engine.IsGameUIVisible() then
        return
    end

    draw.Color(255, 255, 255, 255)
    draw.Line(100, 100, 100, 200)
    draw.Line(100, 200, 200, 200)
    draw.Line(200, 200, 200, 100)
    draw.Line(200, 100, 100, 100)
end

callbacks.Register("Draw", "mydraw", doDraw)
```
