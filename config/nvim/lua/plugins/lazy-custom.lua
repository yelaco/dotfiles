return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "hpp" },
          init_options = {
            fallbackFlags = { '--std=c23' },
          },
        }
      }
    }
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      scroll = { enabled = false },
      statuscolumn = { enabled = true },
      bigfile = { enabled = true },
      dashboard = {
        preset = {
          header = [[
                                  ⢠⡄                                
                                  ⣾⣿⣆                               
                            ⢀⡀⠄⡀⠄⣼⣿⣿⣿⡆                   ⠒⠶⣦⣀       
                   ⢀       ⣸⠁ ⣀⣘⢸⣿⣷⣾⣷⣿⠄                    ⠈⣿⣧      
                   ⠈⠻⣿⣶⣶⣶⣶⣶⣮⡧⣾⣿⣯⣝⣿⣿⣿⣿⣿⡧                     ⣿⣿⡇     
                     ⠘⢿⣿⣻⣿⡿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⣦⠄                  ⢀⣿⣿⡇  ⡄  
                     ⠈⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣻⣇                 ⣠⣾⣿⣿⡧ ⢠⣇⣼  
   ⢀⣠⣴⠾⠷⠶⠤⡀             ⠈⢹⣿⣿⣯⣟⣿⣿⣿⣿⡽⡿⠿⣿⣿⣿⣿⣦⡀             ⣼⣶⣿⣿⣿⣿⣧⣶⣿⣿⠟ 
  ⣴⣿⡏                    ⢻⣿⣿⡽⠿⢿⣿⣯⣿⣶⣴⣶⣿⣿⠘⣿⣿⢻⣦⡀        ⡀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟  
⢀⣾⣿⡏                     ⣿⣿⣷⠄⢶⣶⣿⣿⣿⣿⣿⡧⣋⣸⠘⠱⣿⣇⣤⠉⠄     ⢠⣾⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟   
⣼⣿⣿⣷⠏                 ⣀⣤⣿⢿⣿⠹⣧⣈⢿⣿⣿⣽⣿⡿⢁⣻⡷⠄⠴⣿⣻⡈⢷⡀⢀  ⢀⢂⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠉     
⣿⣿⣿⡇              ⣀      ⠱⣿⢿⡆⢿⣷⠂⠄⠉⠙⢁⣀⣰⡟⡉⠄⠄⠘⠿⣤⡀⠃⢛⠂⠄⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟      
⣿⣿⣿⣇             ⣼     ⣤⣶⣿⡇⣾⣅⠈⣿⣇⣀⣿⡇⢿⣿⣸⣿⣷⠏⠄⠄⢀⠄⠝⢛⣹⣄⣴⣿⣿⣿⣿⣿⡆⢹⣿⣿⣿⣿⡿⣄     
⣿⣿⣿⣿⣦⢀           ⢿⣄   ⣠⣠⣾⣿⣿⣿⣿⣶⣟⣪⡏⠉⢀⠉⠠⣶⣭⣭⡾⣾⣿⣿⣶⡈⢆⠛⠿⣿⣿⣿⣿⣿⣫⣴⣿⣿⣿⣿⣿⣿⣾⣿⣄   
⠻⣿⣿⣿⣿⣿⣄           ⠉⠒⠶⣾⡿⣿⠿⢻⣿⢿⣿⣿⣿⣵⡿⠟⠁⢴⣾⣼⣽⣥⣥⢿⠿⣿⣿⡇⠄⠃⠘⢦⣚⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿  
⣄⣿⣿⣿⣿⣿⣿⣧⣃  ⣿⣄⡀  ⢰⡇ ⠄⣠⣶⠟⠁⠄⣿⣿⣾⣿⣿⣿⣷⣿⣷⣤⣶⣾⣿⣿⣿⣿⣷⣘⣿⣿⡳⠄⠄⠄⢀⠉⠈⠿⠿⠿⠟⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄
⠈⠻⣿⣿⣿⣿⣿⣿⣿⣶⣤⣿⣿⣷⣤⣀⣸⣿⣦⣾⠟⠁⠄⢠⢀⠿⡿⣽⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⡿⢃⠃⠄⠄⠄⠄⠄⠄⠄⠄⣀⣀⣤⣄⡉⠻⣿⣿⠟⢻⣟⠉⢸
  ⠻⣿⣿⣿⣿⣿⣿⣿⣿⢟⣿⣿⣿⣿⣟⣿⣿⡏⠄⠒⠂⢁⠴⣾⠃⠙⣿⡟⠛⣿⣿⣿⣿⡿⣿⣿⣿⣿⢾⣿⢣⡏⢶⣌⠳⠄⠄⠄⠄⠄⠄⠄⠈⢻⣿⣿⣿⣿⡆⠄⠉⠄⠄⠄⣬⣿
   ⢿⣿⣿⣿⣿⣿⣿⠋⢸⣿⣿⣿⣿⡿⡿⢟⣶⣡⣾⢷⣿⣿⡊⠄⠄⢬⣽⣯⣻⣿⣿⣿⣿⣷⣻⣙⡋⢸⡇⠄⣿⣷⣮⣀⠄⠄⠄⠄⠄⠄⠄⠄⠈⠉⠛⠛⠙⠃⠄⠄⠄⠄⣰⣿⠟
  ⠈⠻⣿⣿⣿⣿⣿⣿⡆⠄⠹⣿⡿⠋⠄⠁⣿⡇⢯⣶⣿⣿⣷⠄⠄⠄⠔⠨⣿⣿⣻⣿⣿⣿⣿⠿⠎⠄⠸⡷⣇⠿⣿⣷⣍⢶⡄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣀⠄⣀⡆⠄⣠⣾⣿⠟ 
    ⠻⣿⣿⣿⣿⣿⣿⣷⡖⡶⠁⢀⡆⢀⣽⣿⣿⣿⣿⣿⠋⠄⠠⣾⣧⢰⢿⠍⠁⠁⠉⠄⢀⣀⠄⠄⠄⡦⠹⠄⣿⣿⣿⣷⣧⡀⠄⠄⢰⡄⣼⣶⡄⠄⢀⠻⣿⣶⣿⣿⣿⠟  
     ⠻⣿⣿⣿⣿⣿⣿⣿⣄⢆⣼⣿⣿⣿⣿⣿⣿⡿⠃⣀⡀⠄⠄⠄⠁⠄⠄⠄⠄⠴⠟⠛⠁⠁⠄⠄⡇⠐⡇⣿⣿⣿⣿⣿⣿⠄⣠⡿⣀⣽⣿⠃⠄⣸⡇⣵⣿⣿⣿⠟   
      ⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⠝⣡⠾⠛⠑⠁⠄⣠⣤⣴⣲⡄⠄⠄⠄⠄⡄⣤⡀⠄⠄⠈⡔⢸⣿⣿⣿⣿⣿⣿⣦⠄⠉⠉⠁⠄⢀⡟⠄⣿⣿⠟     ]],
        },
      },
      indent = {
        animate = { enabled = false },
        chunk = {
          enabled = true,
          char = {
            corner_top = "╭",
            corner_bottom = "╰",
            arrow = "─",
          },
        }
      },
      image = {}
    },
  },
  {
    "folke/edgy.nvim",
    ---@module 'edgy'
    ---@param opts Edgy.Config
    opts = function(_, opts)
      for _, pos in ipairs({ "top", "bottom", "left", "right" }) do
        opts[pos] = opts[pos] or {}
        table.insert(opts[pos], {
          ft = "snacks_terminal",
          size = { height = 0.4 },
          title = "%{b:snacks_terminal.id}: %{b:term_title}",
          filter = function(_buf, win)
            return vim.w[win].snacks_win
              and vim.w[win].snacks_win.position == pos
              and vim.w[win].snacks_win.relative == "editor"
              and not vim.w[win].trouble_preview
          end,
        })
      end
    end,
  },
  {
    "saghen/blink.cmp",
    dependencies = {
      'Kaiser-Yang/blink-cmp-avante',
    },
    opts = {
      sources = {
        -- Add 'avante' to the list
        default = { 'avante', 'lsp', 'path', 'snippets', 'buffer' },
        providers = {
          avante = {
            module = 'blink-cmp-avante',
            name = 'Avante',
              opts = {
                -- options for blink-cmp-avante
              }
            }
          },
      },
      fuzzy = {
        implementation = "prefer_rust",
      },
    }
  }
  -- {
  --   "zbirenbaum/copilot.lua",
  --   opts = {
  --     logger = {
  --       print_log_level = vim.log.levels.ERROR, -- or `OFF` instead of `ERROR` if you want to disable logging as a whole
  --     },
  --   },
  -- }
}
