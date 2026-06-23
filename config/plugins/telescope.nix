{
  plugins = {
    web-devicons.enable = true;
    telescope = {
      enable = true;
      extensions.ui-select.enable = true;
      luaConfig.post = ''
        local builtin = require("telescope.builtin")
        local actions = require("telescope.actions")
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
        vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Telescope git files" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
        vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Telescope keymaps" })
        vim.keymap.set("n", "<leader>fl", builtin.filetypes, { desc = "Telescope filetypes" })
        vim.keymap.set("n", "<leader>fc", builtin.colorscheme, { desc = "Telescope colorschemes" })
        vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Telescope live grep" })
        vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "Telescope git branches" })
        vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find, { desc = "Telescope current buffer fzf" })
        vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = "Telescope marks" })
      '';
    };
  };
}
