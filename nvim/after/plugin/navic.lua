require('nvim-navic').setup({
    icons = {
        File = " ",
        Module = " ",
        Namespace = " ",
        Package = " ",
        Class = "󰏖 ",
        Method = " ",
        Property = " ",
        Field = " ",
        Constructor = " ",
        Enum = "∑ ",
        Interface = " ",
        Function = "ƒ ",
        Variable = "󰫧 ",
        Constant = " ",
        String = "󰦨 ",
        Number = "# ",
        Boolean = " ",
        Array = " ",
        Object = " ",
        Key = "󰌆 ",
        Null = "NULL ",
        EnumMember = "  ",
        Struct = "󰡢 ",
        Event = " ",
        Operator = "+ ",
        TypeParameter = "𝙏 ",
    },
    lsp = {
        auto_attach = true,
        preference = {},
    },
    highlight = true,
    separator = " > ",
    depth_limit = 0,
    depth_limit_indicator = "..",
})