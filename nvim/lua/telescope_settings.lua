local actions = require('telescope.actions')

-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  defaults = {
    file_ignore_patterns = { 'node_modules', 'package-lock.json', 'yarn.lock' },
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = 'smart_case',        -- or "ignore_case" or "respect_case"
    }
  }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
