return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      layout_config = {
        horizontal = {
          prompt_position = "top",
          preview_width = 0.49,
        },
        width = 0.9,
        preview_cutoff = 100
      }
      sorting_strategy = "ascending"
    }
  }
}
