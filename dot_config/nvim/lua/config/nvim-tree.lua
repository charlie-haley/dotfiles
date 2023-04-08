local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

require("nvim-tree").setup()

vim.keymap.set('n', '<leader>tt', '<cmd>NvimTreeFocus<CR>', {})

