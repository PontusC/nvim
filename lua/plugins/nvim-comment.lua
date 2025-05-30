return {
  "terrortylor/nvim-comment",
  config = function()
    require("nvim_comment").setup({
      -- Linters prefer comment and line to have a space in between markers
      marker_padding = true,
      -- should comment out empty or whitespace only lines
      comment_empty = false,
      -- trim empty comment whitespace
      comment_empty_trim_whitespace = false,
      -- Should key mappings be created
      create_mappings = false,
      -- Normal mode mapping left hand side
      line_mapping = "gcc",
      -- Visual/Operator mapping left hand side
      operator_mapping = "gc",
      -- text object mapping, comment chunk,,
      comment_chunk_text_object = "ic",
      -- Hook function to call before commenting takes place
      hook = nil,
    })

    vim.keymap.set("n", "gcc", ":CommentToggle<CR>", { desc = "Toggle comment on current line" })
    vim.keymap.set("v", "gc", ":CommentToggle<CR>", { desc = "Toggle comment on selection" })
  end,
}
