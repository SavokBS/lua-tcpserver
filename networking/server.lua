local cache = {}
local socket = require("socket")
local fClient = require("networking/client")
local logger = require("utils/logger")
local port = 6974
local server = assert(socket.bind("*", port))



function cache.start() do
  logger.log("Server started on port " .. port)
  while true do
    -- Accept incoming connections
    local client = server:accept()
    local ip, port = client:getpeername()
    logger.log("Client connected from " .. ip .. " on port " .. port)
    local co = coroutine.create(fClient.run)
    coroutine.resume(co, client)
    --client:close()
  end
end
end

return cache