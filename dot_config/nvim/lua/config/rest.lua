local function run_rest_request()
  require('rest-nvim').run()
end

vim.keymap.set('n', '<leader>ar', run_rest_request, {})

require("rest-nvim").setup({
})
