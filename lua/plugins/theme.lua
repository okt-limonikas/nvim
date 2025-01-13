return {
  "Shatur/neovim-ayu",
  name = "ayu-theme",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("ayu").setup({
      -- ...
    })

    vim.cmd("colorscheme ayu-mirage")
  end,
}
