-- core setting
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.opt.langmenu = 'en_US.UTF-8'
pcall(vim.cmd, 'language message en_US.UTF-8')
vim.opt.clipboard = 'unnamedplus'

-- カーソル移動系
map({ "n", "x", "o"}, "d", "h", opts)
map({ "n", "x", "o"}, "h", "j", opts)
map({ "n", "x", "o"}, "t", "k", opts)
map({ "n", "x", "o"}, "n", "l", opts)

map({ "n", "x", "o"}, "D", "^", opts) -- 行頭へ
map({ "n", "x", "o"}, "N", "$", opts) -- 行末へ
map({ "n", "x", "o"}, "H", "G", opts) -- 列尾へ
map({ "n", "x", "o"}, "T", "gg", opts) -- 列頭へ

map({ "n", "x", "o"}, "g", "b", opts) -- 次の単語
map({ "n", "x", "o"}, "G", "B", opts) -- 次の単語
map({ "n", "x", "o"}, "r", "w", opts) -- 前の単語
map({ "n", "x", "o"}, "R", "W", opts) -- 前の単語

-- 編集系
map({ "n", "x", "o"}, ",", "x", opts) -- 削除
map({ "n", "x", "o"}, ".", "d", opts) -- 削除
map({ "n", "x", "o"}, "..", "dd", opts) -- 削除(行)
map({ "n", "x", "o"}, "y", "y", opts) -- ヤンク
map({ "n", "x", "o"}, "yy", "yy", opts) -- ヤンク(行)
map({ "n", "x", "o"}, "p", "p", opts) -- ペースト
map({ "n", "x", "o"}, ";", "u", opts) -- アンドゥー

-- モード変更系
map({ "n", "x", "o"}, "aa", "<Esc>", opts) -- n modeへ
map({ "n", "x"     }, "u", "i", opts) -- i modeへ(カーソル右から)
map({ "n", "x"     }, "i", "a", opts) -- i modeへ(カーソル位置から)
map({ "n", "x"     }, "e", "o", opts) -- i modeへ(次の行から)
map({ "n"          } , "k", "v", opts) -- vmodeへ

-- 検索系
map({ "n"          }, "f", "n", opts) -- 次の同じ文字列へ
map({ "n"          }, "F", "N", opts) -- 前の同じ文字列へ

-- vscode only
--if vim.g.vscode then
--end

-- neovim only
if not vim.g.vscode then
    -- only Neovim
    vim.cmd('syntax enable')
    vim.opt.number = true
end
