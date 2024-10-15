-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "<leader><CR>", "<Esc>:w<CR>a", { noremap = true })
vim.keymap.set("n", "<leader><CR>", "<Esc>:w<CR>", { noremap = true })

-- Invert boolean values.
function ToggleBoolean()
  local current_word = vim.fn.expand("<cword>")

  if current_word == "true" then
    vim.cmd("normal! ciwfalse")
  elseif current_word == "false" then
    vim.cmd("normal! ciwtrue")
  else
    print("Not a boolean value.")
  end
end

vim.keymap.set("n", "<leader>I", ToggleBoolean, { noremap = true, silent = true })
