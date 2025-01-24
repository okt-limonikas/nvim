return {
  "datsfilipe/vesper.nvim",
  name = "vesper",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("vesper").setup({
      transparent = false, -- Boolean: Sets the background to transparent
      italics = {
        comments = false, -- Boolean: Italicizes comments
        keywords = false, -- Boolean: Italicizes keywords
        functions = false, -- Boolean: Italicizes functions
        strings = false, -- Boolean: Italicizes strings
        variables = false, -- Boolean: Italicizes variables
      },
      overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
      palette_overrides = {}, -- ...
    })

    vim.cmd("colorscheme vesper")
  end,
}
