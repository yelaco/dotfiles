return {
    "kawre/leetcode.nvim",
    build = ":TSInstall html", -- if you have `nvim-treesitter` installed
    dependencies = {
        -- "nvim-telescope/telescope.nvim",
        "ibhagwan/fzf-lua",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    opts = {
      --@type lc.lang
      lang = "rust"
    },
}
