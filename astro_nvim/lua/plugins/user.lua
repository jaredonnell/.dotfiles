-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- == Examples of Overriding Plugins ==

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      local custom_headers = {
        no_see = {
          "                                                      ░░░                                  ░▓▓░              ",
          "              ▒██████▓                             ░███████▒                             ████████░           ",
          "             ██████████░                          ▓█████████▓                          ░██████████▒          ",
          "         ▒█░███▒░▒█░░▒██░█▓                   ░██▒██▒  ▓▒  ▓█▓██▒                   ██▓██▓   ▒   ██▓██       ",
          "        ▒░▓███░▒░░░░ ▒ ██▓░▓                  ▓▒███░░█▓░ ▓█▒▓██▒▓                  ▓░▒███ ██▒ ░▓█░██▒░▓      ",
          "        ░░▓█████░    ░░███ ▓                  ▓░███░  ░▒▓░  ▓██░▓                  ░▒▓███   ▒░▒░  ███░▒      ",
          "         █▓█████▓▒   ░░██░█              ░░▒▒░ ▓▒██ ░░ ▒░░░░░█▒▓▒ ▒░▒▒              ▓▒▓█▒ ░ ░▒▓ ░ ▓█░█       ",
          "        ▒████████   ░▒▒███             ░░░ ░░░▒░███▒░      ░▓██░░▒ ░░ ░░░            ░███▒▒░ ░░░░▒██▒        ",
          "       ████████░░  ░░░▓██             ░██  ░  ░░ ███▒▒░░░░▒░██░ ▓  ░░ ▒█▓░            ▒███▒     ▒███░        ",
          "     ▒█████████░ ░▒▒  ██▒            ▒███░▓▒  ▒▒ ▒███  ░░░ ▓█▓  ▓░  ▓▒▓███░            ███▓   ░▓██████▓      ",
          "    ███████▒ ░██▒   ░██             ▓██████▒░░░░   ███░  ░██▒   ░▒░▒▓██████░             ██▒   ▒████████▒    ",
          "   ████████████████████████▒░      ▒██████▒  ░▓█████████████████▓▒   ███████       ░▓████████████████████░   ",
          "  ████████████████████████████     ██████▓ ░███████████████████████▒ ░██████▓    ░████████████████████████▓  ",
          "  ███████████▒   ░▓██░    ▓███    ░▓█████░ ░███████░   ▒██▒    ░███▓ ░▒█████▒    ▒███████░   ▒██▒   ▒██████▓ ",
          " ███████████               ▒██▓    ██████  ▓█████░               ███  ██████▓    ██████░             ▓██████▓",
          "▓███████████              ░░███   ░██████ ░██████░ ░             ███▓ ▒██████   ▒██████░ ░           ░ ██████",
        },
        computer_monkey = {
          "                                  98888                                                  ",
          "                                88 8888880                      888                      ",
          "                               88 888888                     896 88                      ",
          "                               88848888800                883888889                      ",
          "                           888888888888848              0 88888788                       ",
          "                       98888888888888                  08888888 88                       ",
          "                      988888888888889                  0888888888                        ",
          "                     58888888888888 8                 2 888888 88                        ",
          "                     888888   2888083                 08888888 88                        ",
          "                     8888 88888 888 8                  888888 8888                       ",
          "                     888 8888888 888 8               80  8888888  0                      ",
          "                     8888888888888888 8              8888888888 8880                     ",
          "                     88888888888888788782            0           888                     ",
          "                    888888888 888888888 8 8      40005           8888                    ",
          "                   889  8888888888888888888888888888888888888888888888                   ",
          "                   88   88                                          88                   ",
          "                   888  88       888888                             88                   ",
          "                    988 88           88                             88                   ",
          "                      888           88                              88                   ",
          "                         88888888888                                88                   ",
          "                        99                                          98                   ",
        },
        monkey_walk = {
          "                                                0                                      ",
          "                                               0                                       ",
          "                           1                 000                                       ",
          "                         0   7                90                     005               ",
          "                         1    0               00                   0     0             ",
          "                        9    0                00   000000          0      0            ",
          "                           00                 00  0      0         01     0            ",
          "                        00                   000  0   0   0         003                ",
          "         400   8000000000                 00000007 900 5450000        00000000005000000",
          "         000000000000000000              7000000000 000530           000000000000000000",
          "         00000000000000 3000                0080000000010            000000000000000   ",
          "   0035000   0009  500    40000000         00    000000               00000 0000000    ",
          "  1           00    00           0       200       000            00000000    00 00    ",
          "              0       09                06        000             0    00     0   0    ",
          "          70809     3000               0           000             0  00           0   ",
          "                                                     06                             681",
          "                                                    00                                 ",
        },
        god = {
          "__| |__________________________________________________________________________________________________________________________________| |__",
          "__   __________________________________________________________________________________________________________________________________   __",
          "  | |                                                                                                                                  | |  ",
          "  | |                                                                                                                                  | |  ",
          "  | |        #         ######      # #     #   #      #           #               #               ########## ##########      #         | |  ",
          "  | |       ########                #   #  #   # ##########      ########      #######  #########          # #        #   #######      | |  ",
          "  | |      #    #    ##########    # # #   #   #      #         #    #          # #     #       #         #          #     # #         | |  ",
          "  | |     #    #     #        #       #    #   #   #  # #      #    #           # #     #       # ########          #      # #         | |  ",
          "  | |         #             ##       # #      #   #   #  #         #         ########## #       #     ##           #    ##########     | |  ",
          "  | |        #            ##        #   #    #   #   ##   #       #               #     #########   ##           ##          #         | |  ",
          "  | |       #           ##               # ##         #          #                #               ##           ##            #         | |  ",
          "  | |                                                                                                                                  | |  ",
          "__| |__________________________________________________________________________________________________________________________________| |__",
          "__   __________________________________________________________________________________________________________________________________   __",
          "  | |                                                                                                                                  | |  ",
        },
      }
      opts.section.header.val = custom_headers.god

      return opts
    end,
  },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
}
