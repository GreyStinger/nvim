function FormatWithClangFormat()
    local current_file = vim.fn.expand('%:p')
    local project_root = vim.fn.finddir('.git/..', vim.fn.expand('%:p:h') .. ';')
    local clang_format = project_root .. '/.clang-format'
    if vim.fn.filereadable(clang_format) == 1 then
        vim.cmd('silent !clang-format -i --style=file ' .. current_file)
        vim.cmd('edit!')
    else
        print("No .clang-format file found in project root")
    end
end

vim.api.nvim_set_keymap('n', '<leader>cf', ':lua FormatWithClangFormat()<CR>', { noremap = true, silent = true })

