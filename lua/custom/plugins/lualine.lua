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
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' },
            },
        }
    end,
}
