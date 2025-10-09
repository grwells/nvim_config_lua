return {
    -- supertab completion, copied from lazyvim recipes
    {
      "hrsh7th/nvim-cmp",
      enabled = true,
      dependencies = {"hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-path"},
      opts = function()
          -- Register nvim-cmp lsp capabilities
          vim.lsp.config("*", { capabilities = require("cmp_nvim_lsp").default_capabilities() })

          --vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
          local cmp = require("cmp")
          local defaults = require("cmp.config.default")()
          local auto_select = true
          return {
--                    snippet = {
--                        expand = function (args)
--                            require('luasnip').lsp_expand(args.body)
--                        end,
--                    },
--                    --auto_brackets = {}, -- configure any filetype to auto add brackets
                    --completion = {
                      --completeopt = "menu,menuone,noinsert" .. (auto_select and "" or ",noselect"),
                    --},
                    window = {
                        completion = cmp.config.window.bordered(),
                        documentation = cmp.config.window.bordered(),
                    },
                    mapping = cmp.mapping.preset.insert({
                      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                      ["<C-f>"] = cmp.mapping.scroll_docs(4),
                      ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
                      ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
                      ["<C-Space>"] = cmp.mapping.complete(),
                      ["<CR>"] = cmp.mapping.confirm({ select = true}),
                    }),
                    sources = cmp.config.sources({
                        {name = 'luasnip'},
                        { name = "lazydev" },
                        { name = "nvim_lsp" },
                        { name = "path" },
                        { name = "buffer" },
                    }),
                    sorting = defaults.sorting,
                }
    end    
    },
}
