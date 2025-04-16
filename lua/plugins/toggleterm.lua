return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    -- Setup toggleterm
    require('toggleterm').setup {
      -- Size can be a number or function which returns a number
      size = function(term)
        if term.direction == 'horizontal' then
          return 15
        elseif term.direction == 'vertical' then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<c-\>]], -- Ctrl+\ to toggle terminal
      hide_numbers = true,
      shade_terminals = true,
      shading_factor = 2,
      --start_in_insert = true,
      --insert_mappings = true,
      persist_size = true,
      direction = 'float', -- 'vertical' | 'horizontal' | 'float' | 'tab'
      close_on_exit = true, -- Close the terminal window when the process exits
      shell = vim.o.shell,
      float_opts = {
        border = 'curved',
        winblend = 0,
        highlights = {
          border = 'Normal',
          background = 'Normal',
        },
      },
    }
  end,
}
