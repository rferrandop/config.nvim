local map = vim.keymap.set

return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        map('n', '<leader>ff', builtin.find_files, {})
        map('n', "<C-f>", builtin.find_files, {})
        map('n', '<C-p>', builtin.git_files, {})
        map('n', '<leader>fg', function()
            builtin.grep_string({ search = vim.fn.input("rg ") })
        end)
    end
}
