local clients_lsp = function()
    -- Check if 'conform' is available
    local status, conform = pcall(require, 'conform')
    if not status then
        return 'Conform not installed'
    end

    local lsp_format = require 'conform.lsp_format'

    -- Get formatters for the current buffer
    local formatters = conform.list_formatters_for_buffer()
    if formatters and #formatters > 0 then
        local formatterNames = {}

        for _, formatter in ipairs(formatters) do
            table.insert(formatterNames, formatter)
        end

        return '󰷈 ' .. table.concat(formatterNames, ' ')
    end

    -- Check if there's an LSP formatter
    local bufnr = vim.api.nvim_get_current_buf()
    local lsp_clients = lsp_format.get_format_clients { bufnr = bufnr }

    if not vim.tbl_isempty(lsp_clients) then
        return '󰷈 LSP Formatter'
    end

    return ''
end

return {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicon' },
    config = function()
        require('lualine').setup {
            options = {
                theme = 'material-stealth',
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = {
                    'branch',
                    {
                        'diff',
                        color_added = '#b8bb26',
                        color_modified = '#fabd2f',
                        color_removed = '#fb4934',
                        symbols = { added = '+', modified = '~', removed = '-' },
                    },
                },
                lualine_c = { 'filename' },
                lualine_x = { clients_lsp, 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' },
            },
        }
    end,
}
