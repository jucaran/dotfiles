return {
  "numToStr/Comment.nvim",
  config = function()
    require('Comment').setup()
    -- gcc comment line using linewise
    -- gbc comment line using blockwise
  end
}
