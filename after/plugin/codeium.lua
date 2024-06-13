local cmp = require('cmp')

cmp.setup({
    experimental = {
        ghost_text = { 
            hlgroup = "Comment",
            multiline = true,
        }
    },
    sources = {
        { name = "codeium" }
    },
    mapping = {
        ["<tab>"] = cmp.mapping.select_next_item(),
    }
})
