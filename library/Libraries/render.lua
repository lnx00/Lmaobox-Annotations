---@meta

---The render library provides a way to interact with the rendering system.
---@class render
render = {}

---Push a 3D view of type ViewSetup to the render stack. \
---If texture is `nil`, the current render target is used.
---@param view ViewSetup
---@param clearFlags number # Bitfield of Clear flags
---@param texture Texture? # Texture object to render to
function render.Push3DView(view, clearFlags, texture) end

---Pop the current view from the render stack.
function render.PopView() end

---Draw the scene onto the texture that is currently on top of the stack - by default your whole screen. \
---draw3Dskybox and drawSkybox are booleans that determine if the 3D skybox or 2D skybox should be drawn. \
---@param draw3Dskybox boolean
---@param drawSkybox boolean
---@param view ViewSetup
function render.ViewDrawScene(draw3Dskybox, drawSkybox, view) end

---Draw a screen space rectangle with a given Material. Material is a Material object. \
---destX and destY are the coordinates of the top left corner of the rectangle. \
---width and height are the dimensions of the rectangle. \
---srcTextureX0, srcTextureY0, srcTextureX1, srcTextureY1 are the coordinates of the top left and bottom right corners of the rectangle on the texture. \
---srcTextureWidth and srcTextureHeight are the dimensions of the texture.
---@param material Material
---@param destX integer
---@param destY integer
---@param width integer
---@param height integer
---@param srcTextureX0 number # Left
---@param srcTextureY0 number # Top
---@param srcTextureX1 number # Right
---@param srcTextureY1 number # Bottom
---@param srcTextureWidth integer
---@param srcTextureHeight integer
function render.DrawScreenSpaceRectangle(material, destX, destY, width, height, srcTextureX0, srcTextureY0, srcTextureX1, srcTextureY1, srcTextureWidth, srcTextureHeight) end

return render
