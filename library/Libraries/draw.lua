---@meta

---This library allows you to draw shapes and text on the screen.
---It also allows you to create textures from images and draw them.
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

---Draw a rectangle with a fade.
---The fade is horizontal by default, but can be vertical by setting horizontal to false.
---The alpha values are between 0 and 255.
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@param alpha1 integer 0 to 255
---@param alpha2 integer 0 to 255
---@param horizontal boolean?
function draw.FilledRectFade(x1, y1, x2, y2, alpha1, alpha2, horizontal) end

---Draws a fade between the fadeStartPt and fadeEndPT points.
---The fade is horizontal by default, but can be vertical by setting horizontal to false.
---The alpha values are between 0 and 255.
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@param fastStartPt integer
---@param fadeEndPt integer
---@param alpha1 integer 0 to 255
---@param alpha2 integer 0 to 255
---@param horizontal boolean?
function draw.FilledRectFastFade(x1, y1, x2, y2, fastStartPt, fadeEndPt, alpha1, alpha2, horizontal) end

---Draw a colored circle with center at centerx, centery and radius radius.
---The color is specified by r, g, b, a.
---@param centerX integer
---@param centerY integer
---@param radius number
---@param r integer
---@param g integer
---@param b integer
---@param a integer
function draw.ColoredCircle(centerX, centerY, radius, r, g, b, a) end

---Draw an outlined circle with center at centerx, centery and radius radius.
---The circle is made up of segments number of lines.
---@param x integer
---@param y integer
---@param radius number
---@param segments integer
function draw.OutlinedCircle(x, y, radius, segments) end

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

---Get the size of the current window.
---@return integer width, integer height
---@nodiscard
function draw.GetScreenSize() end

---Create font by name.
---@param name string
---@param height integer
---@param weight integer
---@param flags? FFontFlag|integer # optional font flag (default = ``FONTFLAG_CUSTOM | FONTFLAG_ANTIALIAS``)
---@return Font
---@nodiscard
function draw.CreateFont(name, height, weight, flags) end

---Add .ttf file data to available fonts.
--
---Path must be relative to Team Fortress 2 folder
---@param ttfPath string
function draw.AddFontResource(ttfPath) end

---Set current font for drawing.
---@param font Font
function draw.SetFont(font) end

--[[ Textures ]]--

---Create new texture from image on the given path.
--
---If no absolute path is provided, it will search the file in `localappdata` folder, then game's root directory `Team Fortress 2`. 
--
---Supported image extensions: PNG, JPG, BMP, TGA, VTF
--
---Input image width, height should equal to a number in power of 2 to avoid checkered pink-and-black textures
---@param texturePath string
---@return Texture
---@nodiscard
function draw.CreateTexture(texturePath) end

---Create new texture from string.
--
---Input image width, height should equal to a number in power of 2 to avoid checkered pink-and-black textures
--
---[String creation guide](https://stigmax.gitbook.io/lua-guide/auxiliary/optimizations#string-concatenation)
---@param rgbaData string
---@param width integer
---@return Texture
---@nodiscard
function draw.CreateTextureRGBA(rgbaData, width, height) end

---Returns size of the texture as integers
---@param id Texture
---@return integer width, integer height
---@nodiscard
function draw.GetTextureSize(id) end

---Draw textured rectangle.
---@param id Texture
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
function draw.TexturedRect(id, x1, y1, x2, y2) end

---Draw the texture by textureId as a polygon.
---
---The vertices table should be a list of tables, each containing 4 values: x,y of the vertex, and u,v of the tex coordinate.
---@param id Texture
---@param vertices { [1]: number, [2]: number, [3]: number, [4]: number }[]
---@param clipVertices boolean Clip to scren?
function draw.TexturedPolygon(id, vertices, clipVertices) end

---Delete texture by id from memory. You should do this when unloading your script.
---@param id Texture
function draw.DeleteTexture(id) end

return draw
