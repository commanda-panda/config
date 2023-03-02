return {
  -- Plenary provides helper functions.
  {
    "nvim-lua/plenary.nvim",
    lazy = true,
  },

  -- Lua snippet engine.
  {
    "L3MON4D3/luasnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    event = "InsertEnter",
    config = function()
      local ls = require("luasnip")
      local types = require("luasnip.util.types")
      local map = vim.keymap.set

      -- --------------
      -- |   Config   |
      -- --------------
      ls.config.set_config({
        enable_autosnippets = true,
        history = true,
        update_events = "TextChanged,TextChangedI",
        region_check_events = "CursorHold",
        delete_check_events = "TextChanged,InsertLeave",
        ext_opts = {
          [types.choiceNode] = {
            active = {
              virt_text = { { " <- Current Choice", "Comment" } },
            },
          },
          [types.insertNode] = {
            active = {
              virt_text = { { "●", "Comment" } },
              hl_group = "LuasnipActive",
            },
          },
          [types.snippet] = {
            passive = {
              hl_group = "LuasnipPassive",
            },
          },
        },
      })

      -- -----------------------
      -- |   Trigger Keymaps   |
      -- -----------------------
      local feedkeys = function(keys)
        vim.api.nvim_feedkeys(
          vim.api.nvim_replace_termcodes(keys, true, true, true),
          "n",
          false
        )
      end

      map("i", "<M-Tab>", function()
        if ls.jumpable() then
          ls.jump(1)
        else
          feedkeys("<tab>")
        end
      end, {
        silent = true,
        desc = "luasnip jump forward one or expand tab",
      })

      map("i", "<Tab>", function()
        if ls.expand_or_locally_jumpable() then
          if ls.expandable() then
            -- Set an undo breakpoint
            feedkeys("<c-g>u")
          end

          ls.expand_or_jump()
        else
          feedkeys("<tab>")
        end
      end, {
        silent = true,
        desc = "luasnip expand or jump forward one, or if neither are avialable, expand tab",
      })

      map("s", "<Tab>", function()
        if ls.jumpable() then
          ls.jump(1)
        end
      end, { silent = true, desc = "luasnip jump forward one" })

      map({ "i", "s" }, "<S-Tab>", function()
        if ls.jumpable() then
          ls.jump(-1)
        end
      end, { silent = true, desc = "luasnip jump back one" })

      map({ "i", "s" }, "<C-l>", function()
        if ls.choice_active() then
          ls.change_choice(1)
        end
      end, { silent = true, desc = "luasnip next choice" })

      map({ "i", "s" }, "<C-u>", function()
        if ls.choice_active() then
          require("luasnip.extras.select_choice")()
        end
      end, { silent = true, desc = "luasnip select choice" })

      vim.api.nvim_create_user_command("LuaSnipEdit", function()
        require("luasnip.loaders").edit_snippet_files({})
      end, { desc = "telescope edit snippets", force = true })

      -- --------------------------
      -- |   Lazy Load Snippets   |
      -- --------------------------
      require("luasnip.loaders.from_vscode").lazy_load({
        exclude = { "tex", "norg" },
        default_priority = 100,
      })
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = "~/.dotfiles/config/snips",
        default_priority = 100,
      })

      require("luasnip.loaders.from_lua").lazy_load({
        paths = "~/.dotfiles/config/nvim/lua/aiko/luasnip/snips",
        default_priority = 1000,
      })
    end,
  },

  -- ------------------
  -- |   Completion   |
  -- ------------------
  --
  -- These are all loaded dependencies nvim-cmp.
  {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    dependencies = {
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-omni",
      "saadparwaiz1/cmp_luasnip",
      "onsails/lspkind.nvim",
    },
    config = function()
      local cmp = require("cmp")
      local lspkind = require("lspkind")

      lspkind.init()

      -- Setup the insert mode completion.
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = {
          ["<tab>"] = cmp.config.disable,
          ["<C-n>"] = {
            i = cmp.mapping.select_next_item({
              behavior = cmp.SelectBehavior.Insert,
            }),
            c = cmp.mapping.select_next_item({
              behavior = cmp.SelectBehavior.Insert,
            }),
          },
          ["<C-p>"] = {
            i = cmp.mapping.select_prev_item({
              behavior = cmp.SelectBehavior.Insert,
            }),
            c = cmp.mapping.select_prev_item({
              behavior = cmp.SelectBehavior.Insert,
            }),
          },
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-e>"] = {
            i = cmp.mapping.abort(),
            c = cmp.mapping.abort(),
          },
          ["<C-y>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
          }),
          ["<CR>"] = {
            i = cmp.mapping.confirm({
              behavior = cmp.ConfirmBehavior.Insert,
              select = false,
            }),
          },
          ["<M-CR>"] = {
            i = cmp.mapping.confirm({
              behavior = cmp.ConfirmBehavior.Insert,
              select = true,
            }),
          },
          ["<C-Space>"] = cmp.mapping({
            i = cmp.mapping.complete(),
            c = function()
              if cmp.visible() then
                if not cmp.confirm({ select = true }) then
                  return
                end
              else
                cmp.complete()
              end
            end,
          }),
        },
        sources = cmp.config.sources({
          { name = "crates" },
          { name = "gh_issues" },
          { name = "nvim_lua" },
          { name = "nvim_lsp" },
          { name = "path" },
          { name = "luasnip" },
        }, {
          { name = "buffer", keyword_length = 5, max_item_count = 10 },
        }),
        -- completion = {
        --   keyword_length = 1,
        -- },
        sorting = {
          comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.score,
            -- Sort entries by their words after the underscore.
            function(entry1, entry2)
              local _, entry1_under = entry1.completion_item.label:find("^_+")
              local _, entry2_under = entry2.completion_item.label:find("^_+")
              entry1_under = entry1_under or 0
              entry2_under = entry2_under or 0
              if entry1_under > entry2_under then
                return false
              elseif entry1_under < entry2_under then
                return true
              end
            end,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
          },
        },
        formatting = {
          format = function(_, vim_item)
            local icons = require("aiko.ui.icons").lspkind
            vim_item.kind =
              string.format("%s %s", icons[vim_item.kind], vim_item.kind)

            return vim_item
          end,
        },
        experimental = {
          native_menu = false,
        },
      })

      -- ---------------------------
      -- |   Setup Command Lines   |
      -- ---------------------------
      --
      -- Command mode completions.
      cmp.setup.cmdline(":", {
        sources = cmp.config.sources({
          { name = "nvim_lua" },
          { name = "cmdline" },
          { name = "path" },
        }),
      })
    end,
  },

  -- Comment out lines and blocks.
  {
    "numToStr/Comment.nvim",
    keys = {
      { "gc", mode = { "n", "x" } },
      { "gb", mode = { "n", "x" } },
      { "gcc" },
      { "gbb" },
      { "gcO" },
      { "gco" },
      { "gcA" },
    },
    config = function()
      local comment = require("Comment")

      comment.setup({
        padding = true,
        sticky = true,
        toggler = {
          line = "gcc",
          block = "gbb",
        },
        opleader = {
          line = "gc",
          block = "gb",
        },
        extra = {
          above = "gcO",
          below = "gco",
          eol = "gcA",
        },
        mappings = {
          basic = true,
          extra = true,
          extended = false,
        },
      })
    end,
  },

  -- Work with parenthesis, quotes, and other text surroundings.
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup({
        keymaps = {
          insert = "<C-g>s",
          insert_line = "<C-g>S",
          normal = "gs",
          normal_cur = "gss",
          normal_line = "gS",
          normal_cur_line = "gSS",
          visual = "S",
          visual_line = "gS",
          delete = "ds",
          change = "cs",
        },
        aliases = {
          ["a"] = ">",
          ["b"] = ")",
          ["B"] = "]",
          ["r"] = "}",
          ["q"] = { '"', "'", "`" },
        },
        move_cursor = true,
      })
    end,
  },

  -- Use '.' to repeat plugin code actions.
  {
    "tpope/vim-repeat",
  },

  -- Show indentation.
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("indent_blankline").setup({
        filetype_exclude = {
          "",
          "NvimTree",
          "Outline",
          "TelescopePrompt",
          "TelescopeResults",
          "alpha",
          "help",
          "lazy",
          "lspinfo",
          "man",
          "mason",
          "norg",
          "packer",
          "terminal",
        },
        buftype_exclude = { "terminal" },
        use_treesitter = false,
        show_trailing_blankline_indent = false,
        show_first_indent_level = false,
        show_current_context = true,
        show_current_context_start = false,
      })
    end,
  },

  -- Effortlessly switch between vim and tmux windows.
  {
    "christoomey/vim-tmux-navigator",
    config = function()
      vim.g.tmux_navigator_no_mappings = 1
      vim.g.tmux_navigator_disable_when_zoomed = 1
    end,
  },

  -- Align tabular data.
  {
    "godlygeek/tabular",
    cmd = "Tabularize",
    config = function()
      -- Add tabular pattern to parse latex table with multicolumns
      vim.cmd.AddTabularPattern(
        [[latex_table /\v(\&)|(\\multicolumn(\{[^}]*\}){3})@=/]]
      )
    end,
  },

  -- Automatically cd to project root.
  {
    "airblade/vim-rooter",
    config = function()
      vim.g.rooter_patterns = {
        ".editorconfig", -- general editor settings
        ".exrc", -- nvim config
        ".git", -- git
        ".hg", -- mercurial
        ".nvimrc", -- nvim config
        ".svn", -- subversion
        "Cargo.toml", -- rust
        "Makefile", -- c/c++
        "package.json", -- javascript
        "pyproject.toml", -- python
        "setup.cfg", -- python
      }
      vim.g.rooter_silent_chdir = 1
    end,
  },

  -- Project local configuration via JSON.
  {
    "folke/neoconf.nvim",
    enabled = false,
  },

  -- Generate documentation comments and doc-strings automatically.
  {
    "danymat/neogen",
    -- stylua: ignore
    keys = {
      { "<leader>nm", "<cmd>Neogen func<CR>", desc = "Neogen generate function docstring" },
      { "<leader>nt", "<cmd>Neogen type<CR>", desc = "Neogen generate type docstring" },
      { "<leader>nf", "<cmd>Neogen file<CR>", desc = "Neogen generate file docstring" },
      { "<leader>no", "<cmd>Neogen class<CR>", desc = "Neogen generate class docstring" },
    },
    config = function()
      require("neogen").setup({
        snippet_engine = "luasnip",
      })
    end,
  },

  -- Highlight todo, fixme, note, perf, etc. comments in buffers.
  {
    "folke/todo-comments.nvim",
    cmd = { "TodoTrouble", "TodoTelescope" },
    event = "BufReadPost",
    -- stylua: ignore
    keys = {
      { "]t", function() require("todo-comments").jump_next() end, desc = "Next todo comment" },
      { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous todo comment" },
      { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Todo Trouble" },
      { "<leader>xtt", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>", desc = "Todo Trouble" },
      { "<leader>xT", "<cmd>TodoTelescope<cr>", desc = "Todo Telescope" },
    },
    config = function()
      require("todo-comments").setup({
        signs = true,
        sign_priority = 1,
      })
    end,
  },

  -- Automatically insert matching pairs.
  {
    "windwp/nvim-autopairs",
    enabled = false,
    config = function()
      local autopairs = require("nvim-autopairs")
      local cmp = require("cmp")

      autopairs.setup({
        fast_wrap = {},
        disable_filetype = { "TelescopePrompt", "vim" },
      })

      local cmp_autopairs = require("nvim-autopairs.completion.cmp")

      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  },

  -- Measure startup time.
  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
  },

  -- Focus a single window in zen mode.
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    config = function()
      require("zen-mode").setup({})
    end,
  },

  {
    "krivahtoo/silicon.nvim",
    cmd = "Silicon",
    build = "./install.sh",
    config = function()
      require("silicon").setup({ font = "Hack=16" })
    end,
  },
}
