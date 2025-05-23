---@meta

---A lightweight HTTP library providing a simple get method for downloading data from the internet.
---[View Docs](https://lmaobox.net/lua/Lua_Libraries/http/)
---@class http
http = {}

---Returns string of the body response.
---@param url string
---@return string
function http.Get(url) end

---Performs a asynchronous HTTP GET request to the specified URL that doesn't halt the script.
---Uses a callback to get the response from the url (BETA)
---@param url string
---@param callback fun(response: string)
---@nodiscard
function http.GetAsync(url, callback) end
