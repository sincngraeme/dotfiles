return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    
    config = function()
        require("tokyonight").setup({
            dim_inactive = false,
            transparent = vim.g.bg_transparency,

            on_colors = function(colors)
                colors.border = colors.blue -- make my borders visible for god's sake
            end,
            
            on_highlights = function(hl, colors)
                hl.StatusLine = {
                    bg = colors.bg
                }
                hl.StatusLineNC = {
                    fg = colors.comment,
                    bg = colors.bg_dark
                }
                hl.NormalFloat = {
                    bg = "None"
                }
            end,
        })

        -- load the colorscheme here 
        --  (this will go in each colorscheme file and ensure we only load it once)
        if string.match(vim.g.default_colorscheme or "", "^tokyonight") then
            vim.cmd("colorscheme " .. vim.g.default_colorscheme)
        end
    end,
}
