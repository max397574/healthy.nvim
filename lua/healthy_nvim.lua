local M = {}

local settings = {}

settings.messages = {
  "Posture check📏",
  "Drink water💧",
  "Stand Up a little bit🪑❌",
  "Do some pushups or squats🏋️"
}

function M.setup(update)
  settings = setmetatable(update, { __index = settings })
end


function M.be_healthy()
  math.randomseed(os.clock())
  local rand_int = math.random() * #settings.messages
  local selected = settings.messages[math.floor(rand_int) + 1]
  print(selected)
end

function M.init()
  vim.cmd[[autocmd InsertLeave * :lua require("healthy_nvim").be_healthy()]]
end

return M
