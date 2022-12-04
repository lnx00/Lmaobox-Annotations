---@meta

---@class draw
draw = {}

---Add .ttf file data to available fonts.
---
---Path must be relative to Team Fortress 2 folder
---
---@param ttf string
function draw.AddFontResource(ttf) end

---Set color for drawing shapes and texts.
---@param r integer
---@param g integer
---@param b integer
---@param a integer
function draw.Color(r, g, b, a) end

---Create font by name.
---
--- Enter ``vgui_spew_fonts`` to in-game console to get list of available fonts.
---
---@param name string
---@param height integer
---@param weight integer
---@param flags? integer # default font flags are ``FONTFLAG_CUSTOM | FONTFLAG_ANTIALIAS``
---@return Font
---[Font Flags](https://lmaobox.net/lua/Lua_Constants/constants.lua)
---
function draw.CreateFont(name, height, weight, flags) end

---Create new texture from image on the given path.
---
---Path is relative to ``localappdata`` folder, However it's recommended to use absolute path instead
---
---Supported image extensions: PNG, JPG, BMP, TGA, VTF
---
--- Input image width, height should equal to a number in power of 2 to avoid checkered pink-and-black textures
---@param path string
---@return Texture
function draw.CreateTexture(path) end

---Create new texture.
---
---Call ``draw.DeleteTexture`` when you're done with it
---
--- Input image width, height should equal to a number in power of 2 to avoid checkered pink-and-black textures
---@param rgba string
---@param width integer
---@return Texture
function draw.CreateTextureRGBA(rgba, width, height) end

---Draw filled rectangle with top left point at x1, y1 and bottom right point at x2, y2.
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function draw.FilledRect(x1, y1, x2, y2) end

---Get the size of the current screen.
---@return integer, integer
function draw.GetScreenSize() end

---Get text size with current font.
---@param text string
---@return integer, integer
function draw.GetTextSize(text) end

---Draw line from x1, y1 to x2, y2.
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function draw.Line(x1, y1, x2, y2) end

---Draw outlined rectangle with top left point at x1, y1 and bottom right point at x2, y2.
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function draw.OutlinedRect(x1, y1, x2, y2) end

---Set current font for drawing.
---@param font Font|integer
function draw.SetFont(font) end

---Draw textured rectangle.
---@param id Texture|integer
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function draw.TexturedRect(id, x1, y1, x2, y2) end

-- Delete texture by textureId from memory. You should do this when unloading your script.
---@param id Texture|integer
function draw.DeleteTexture(id) end

---Returns width, height of the texture as integers
---@param id Texture|integer
---@return integer, integer
function draw.GetTextureSize(id) end

---Draw text at x, y.
---@param x integer
---@param y integer
---@param text string
function draw.Text(x, y, text) end

---Draw text with shadow at x, y.
---@param x integer
---@param y integer
---@param text string
function draw.TextShadow(x, y, text) end

return draw
