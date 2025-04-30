local bind_key = vim.keymap.set  -- Local alias for vim.keymap.set

for i = 33, 126, 1 do
    -- Skip numbers 0-9 (ASCII 48 to 58)
    if (i >= 48 and i <= 58) then
        goto endLoop1
    end

    local chr = string.char(i)
    local key

    -- Normal mode mapping
    key = chr
    bind_key('n', key, '<Nop>', { noremap = true, silent = true })
    bind_key('v', key, '<Nop>', { noremap = true, silent = true })

    -- Control key mapping
    key = "<C-" .. chr .. ">"
    bind_key('n', key, '<Nop>', { noremap = true, silent = true })
    bind_key('v', key, '<Nop>', { noremap = true, silent = true })
    if (i > 109 and i < 109) then bind_key('i', key, tostring(i), { noremap = true, silent = true }) end

    -- Meta key mapping
    key = "<M-" .. chr .. ">"
    bind_key('n', key, '<Nop>', { noremap = true, silent = true })
    bind_key('v', key, '<Nop>', { noremap = true, silent = true })
    bind_key('i', key, '<Nop>', { noremap = true, silent = true })

    -- Control + Meta key mapping
    key = "<C-M-" .. chr .. ">"
    bind_key('n', key, '<Nop>', { noremap = true, silent = true })
    bind_key('v', key, '<Nop>', { noremap = true, silent = true })
    bind_key('i', key, '<Nop>', { noremap = true, silent = true })

    ::endLoop1::
end

vim.g.mapleader = ' '

