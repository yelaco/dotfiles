-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- setup catppuccin colorscheme
require("catppuccin").setup({
    flavour = "auto", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = true, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {},
    custom_highlights = {},
    default_integrations = true,
})

require('image').setup({
  integrations = {
    markdown = {
      -- only_render_image_at_cursor = true,
      resolve_image_path = function(document_path, image_path, fallback)
        -- Define the absolute path to your Assets directory
        local assets_dir = vim.fn.expand("~/second-brain/assets") -- not the path to vault, but to the assets dir

        -- Check if the image_path is already an absolute path
        if image_path:match("^/") then
          -- If it's an absolute path, leave it unchanged
          return image_path
        end

        -- Construct the new image path by prepending the Assets directory
        local new_image_path = assets_dir .. "/" .. image_path

        -- Check if the constructed path exists
        if vim.fn.filereadable(new_image_path) == 1 then
          return new_image_path
        else
        -- If the file doesn't exist in Assets, fallback to default behavior
          return fallback(document_path, image_path)
        end
      end,
    }
  },
  tmux_show_only_in_active_window = true,
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin-mocha"

vim.cmd([[highlight CursorLine guibg=#3A414C]])

require('lualine').setup {
  options = { theme = 'catppuccin-mocha' }
}

-- markdown_preview_nvim
vim.g.mkdp_auto_close = 0

require('colorizer').setup()

-- mcphub_nvim
require("avante").setup({
    -- system_prompt as function ensures LLM always has latest MCP server state
    -- This is evaluated for every message, even in existing chats
    system_prompt = function()
        local hub = require("mcphub").get_hub_instance()
        return hub and hub:get_active_servers_prompt() or ""
    end,
    -- Using function prevents requiring mcphub before it's loaded
    custom_tools = function()
        return {
            require("mcphub.extensions.avante").mcp_tool(),
        }
    end,
})

-- autobackup
local lazy_cmds = vim.api.nvim_create_augroup('lazy_cmds', {clear = true})
local snapshot_dir = vim.fn.stdpath('data') .. '/plugin-snapshot'
local lockfile = vim.fn.stdpath('config') .. '/lazy-lock.json'

vim.api.nvim_create_user_command(
  'BrowseSnapshots',
  'edit ' .. snapshot_dir,
  {}
)

vim.api.nvim_create_autocmd('User', {
  group = lazy_cmds,
  pattern = 'LazyUpdatePre',
  desc = 'Backup lazy.nvim lockfile',
  callback = function(event)
    vim.fn.mkdir(snapshot_dir, 'p')
    local snapshot = snapshot_dir .. os.date('/%Y-%m-%dT%H:%M:%S.json')

    vim.loop.fs_copyfile(lockfile, snapshot)
  end,
})

vim.opt.laststatus = 3
vim.keymap.set('n', '<leader>;', 'A;<Esc>')
vim.keymap.set('n', '<leader>m.', 'A.<Esc>')
vim.keymap.set('n', '<leader>m,', 'A,<Esc>')
