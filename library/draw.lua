---@meta

---@class draw
draw = {}

---Set color for drawing shapes and texts.
---@param r integer
---@param g integer
---@param b integer
---@param a integer
function draw.Color(r, g, b, a) end

---Draw line from x1, y1 to x2, y2.
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function draw.Line(x1, y1, x2, y2) end

---Draw filled rectangle with top left point at x1, y1 and bottom right point at x2, y2.
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function draw.FilledRect(x1, y1, x2, y2) end

---Draw outlined rectangle with top left point at x1, y1 and bottom right point at x2, y2.
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function draw.OutlinedRect(x1, y1, x2, y2) end

---Get text size with current font.
---@param text string
---@return integer textwidth, integer textheight
---@nodiscard
function draw.GetTextSize(text) end

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

---Get the size of the current screen.
---@return integer gamewidth, integer gameheight
---@nodiscard
function draw.GetScreenSize() end

---Create font by name.
---
---Enter ``vgui_spew_fonts`` to in-game console to get list of available fonts.
---@param name string
---@param height integer
---@param weight integer
---@param ... FontFlags|integer # optional font flag (default = ``FONTFLAG_CUSTOM | FONTFLAG_ANTIALIAS``)
---@return Font
---@nodiscard
function draw.CreateFont(name, height, weight, ...) end

---Add .ttf file data to available fonts.
---
---Path must be relative to Team Fortress 2 folder
---@param ttf string
function draw.AddFontResource(ttf) end

---Set current font for drawing.
---@param font Font|integer
function draw.SetFont(font) end

---Create new texture from image on the given path.
---
---Default path is relative to ``localappdata`` folder, However it's recommended to use absolute path instead
---
---Supported image extensions: PNG, JPG, BMP, TGA, VTF
---
---Input image width, height should equal to a number in power of 2 to avoid checkered pink-and-black textures
---@param texturePath string
---@return Texture
---@nodiscard
function draw.CreateTexture(texturePath) end

---Create new texture.
---
---Input image width, height should equal to a number in power of 2 to avoid checkered pink-and-black textures
---@param rgba string
---@param width integer
---@return Texture
---@nodiscard
function draw.CreateTextureRGBA(rgba, width, height) end

---Returns size of the texture as integers
---@param id Texture|integer
---@return integer picwidth, integer picheight
---@nodiscard
function draw.GetTextureSize(id) end

---Draw textured rectangle.
---@param id Texture|integer
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function draw.TexturedRect(id, x1, y1, x2, y2) end

---Delete texture by id from memory. You should do this when unloading your script.
---@param id Texture|integer
function draw.DeleteTexture(id) end

return draw
