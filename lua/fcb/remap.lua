vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<C-f>", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- NEW REMAP

-- Paste at the end of the line
vim.keymap.set("n", "<leader>pe", "A <Esc>p")

vim.keymap.set("n", "<leader>ppv", ":Lex 20<CR>")
vim.api.nvim_set_keymap('n', '<ESC>u', ':nohlsearch<CR>', { noremap = true, silent = true })

-- exit terminal mode
vim.api.nvim_set_keymap('t', '<C-w>N', '<C-\\><C-n>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-w>w', '<C-\\><C-n><C-w>W', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-w><C-w>', '<C-\\><C-n><C-w>W', { noremap = true, silent = true })

-- resize with ctrl + arrow
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

function ToggleLineNumbers()
    if vim.wo.number then
        vim.opt.nu = false
        vim.opt.relativenumber = false
    else
        vim.opt.nu = true
        vim.opt.relativenumber = true
    end
end
vim.api.nvim_set_keymap("n", "<leader>n", ":lua ToggleLineNumbers()<CR>", { noremap = true, silent = true })

function Surround(t)
    local open_char = vim.fn.input("Surround with: ")
    local closed_char = nil
    if open_char == "(" then closed_char = ")" end
    if open_char == "[" then closed_char = "]" end
    if open_char == "{" then closed_char = "}" end
    if open_char == "<" then closed_char = ">" end
    if open_char == "'" then closed_char = "'" end
    if open_char == '"' then closed_char = '"' end
    if open_char == "`" then closed_char = "`" end
    if open_char == "/" then closed_char = "/" end
    if open_char == "|" then closed_char = "|" end

    if t == "w" then
        vim.cmd("normal! ciw" .. open_char)
    elseif t == "W" then
        vim.cmd("normal! ciW" .. open_char)
    elseif t == "$" then
        vim.cmd("normal! c$" .. open_char)
    end
    vim.cmd("normal! p")
    vim.cmd("normal! a" .. closed_char)
    vim.cmd("normal! a")
end
vim.api.nvim_set_keymap("n", "<leader>sw", ":lua Surround('w')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>sW", ":lua Surround('W')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>s$", ":lua Surround('$')<CR>", { noremap = true, silent = true })

function Align()
    local c = vim.fn.input("Align with: ")
    local start = vim.fn.col("'<")
    local max = 0
    for i = vim.fn.line("'<"), vim.fn.line("'>") do
        local line = vim.fn.getline(i)
        local equals = string.find(line, c, start)
        if equals then
            local length = equals - start
            if length > max then
                max = length
            end
        end
    end
    for i = vim.fn.line("'<"), vim.fn.line("'>") do
        local line = vim.fn.getline(i)
        local equals = string.find(line, c, start)
        if equals then
            local length = equals - start
            local spaces = max - length
            local spaces_string = string.rep(" ", spaces)
            local new_line = string.sub(line, 0, equals - 1) .. spaces_string .. string.sub(line, equals)
            vim.fn.setline(i, new_line)
        end
    end
end
vim.api.nvim_set_keymap("v", "<leader>as", ":lua Align()<CR>", { noremap = true, silent = true })

-- GUI FONT SIZE
if vim.fn.has("gui_running") then
  -- vim.cmd("set guifont=PragmataProMonoLiga\\ Nerd\\ Font:h12")
  -- vim.opt.guifont = "PragmataProMonoLiga Nerd Font:h12"
  vim.opt.guifont = "MonoLisa Nerd Font Mono:h20"
end

local fontsize = 20 -- 12
function AdjustFontSize(amount)
  fontsize = fontsize + amount
  vim.opt.guifont = "MonoLisa Nerd Font Mono:h" .. fontsize
end

vim.api.nvim_set_keymap('n', '<C-ScrollWheelUp>', [[:lua AdjustFontSize(1)<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-ScrollWheelDown>', [[:lua AdjustFontSize(-1)<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-ScrollWheelUp>', [[<Esc>:lua AdjustFontSize(1)<CR>a]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-ScrollWheelDown>', [[<Esc>:lua AdjustFontSize(-1)<CR>a]], { noremap = true, silent = true })

-- vim.cmd[[imap <silent><script><expr> <C-,> copilot#Accept("\<CR>")]]
-- vim.g.copilot_no_tab_map = true
-- vim.g.copilot_assume_mapped = true

