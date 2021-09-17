local M = {}

local messages = {
  "Posture Check",
  "Drink Water",
  "Stand Up a little bit",
}

function M.be_healthy()
  math.randomseed(os.clock())
  local rand_int = math.random() * #messages
  local selected = messages[math.floor(rand_int) + 1]
  print(selected)
end

function M.init()
  vim.cmd[[autocmd InsertLeave * :lua require("healthy_nvim").be_healthy()]]
end

return M
