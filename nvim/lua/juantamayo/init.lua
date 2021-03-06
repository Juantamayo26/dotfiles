require("juantamayo.telescope")
require'lspconfig'.tsserver.setup{}
require'lspconfig'.tsserver.setup{on_attach=on_attach}
require'lspconfig'.clangd.setup {
    on_attach = on_attach,
    root_dir = function() return vim.loop.cwd() end
}
require'lspconfig'.pyls.setup{ on_attach=on_attach }

local opts = {
    -- whether to highlight the currently hovered symbol
    -- disable if your cpu usage is higher than you want it
    -- or you just hate the highlight
    -- default: true
    highlight_hovered_item = true,

    -- whether to show outline guides
    -- default: true
    show_guides = true,
}

require('symbols-outline').setup(opts)
