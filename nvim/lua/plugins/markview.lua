return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    -- Settings
    config = function()
        local presets = require("markview.presets");

        require("markview").setup({
            markdown = {
                horizontal_rules = presets.horizontal_rules.dashed
            },
        });
    end,
};
