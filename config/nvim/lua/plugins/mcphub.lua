return {
    "ravitemer/mcphub.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("mcphub").setup({
            extensions = {
                avante = {
                    make_slash_commands = true, -- make /slash commands from MCP server prompts
                }
            },
            global_env = {}
        })
    end,
}
