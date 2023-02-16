--require('hop').setup {}
require('Comment').setup {}
require('nvim-autopairs').setup {}
require('leap') --.add_default_mappings()
local leap = require('leap')
leap.opts.safe_labels = { 'f', 'e', 'j', 'k', 'i', 'n', 'c', 'w', 'r', 'o', 'a', 's', 'd', 't', 'g', 'v', 'm', 'l', 'h',
        'q', 'x', 'b' }
