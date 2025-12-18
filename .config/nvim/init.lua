vim.cmd('syntax enable');
vim.cmd('colorscheme desert');

-- Unset background color
local groups = {
    "Normal",
    "NormalNC",
    "NonText",
    "LineNr",
    "EndOfBuffer"
}
for _, group in ipairs(groups) do
  vim.api.nvim_set_hl(0, group, { bg = "none" })
end

vim.o.number = true;
vim.o.relativenumber = true;

-- Make tabs look 4 characters wide
vim.o.tabstop = 4;
-- Indent with 4 spaces
vim.o.shiftwidth = 4;
-- Expand tabs to spaces
vim.o.expandtab = true;

vim.lsp.enable('rust-analyzer');
vim.lsp.enable('clangd');
vim.lsp.enable('typescript-language-server');

vim.keymap.set(
    "n", "<leader>d",
    vim.diagnostic.open_float,
    { desc = "Open LSP diagnostic" }
);

require('gitsigns');

