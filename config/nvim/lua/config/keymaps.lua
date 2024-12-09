-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local map = vim.keymap.set

-- Rest
map("n", "<leader><S-r>", "", { desc = "Rest"})
map("n", "<leader><S-r>o", "<cmd>Rest open<cr>", { desc = "Open"})
map("n", "<leader><S-r>s", "<cmd>Rest run<cr>", { desc = "Send request"})
map("n", "<leader><S-r>r", "<cmd>Rest last<cr>", { desc = "Send last request"})
map("n", "<leader><S-r>l", "<cmd>Rest logs<cr>", { desc = "View logs"})
map("n", "<leader><S-r>es", "<cmd>Rest env show<cr>", { desc = "Show available env"})
map("n", "<leader><S-r>ej", "<cmd>Rest env select<cr>", { desc = "Select env"})

-- Markdown
map("n", "<Leader>m", "", { desc = "Markdown" })
map("n", "<Leader>mp", "<cmd>MarkdownPreview<CR>", { desc = "Markdown Preview" })
 
-- Lazydocker
map("n", "<leader>k", "<cmd>LazyDocker<CR>", { desc = "Toggle LazyDocker"})

-- Github cli
map("n", "<leader>gH", "", { desc = "Github" })
map("n", "<leader>gHc", "", { desc = "Commit" })
map("n", "<leader>gHcc", "<cmd>GHCloseCommit<cr>", { desc = "Close Commit" })
map("n", "<leader>gHce", "<cmd>GHExpandCommit<cr>", { desc = "Expand Commit" })
map("n", "<leader>gHco", "<cmd>GHOpenToCommit<cr>", { desc = "Open To Commit" })
map("n", "<leader>gHcp", "<cmd>GHPopOutCommit<cr>", { desc = "Pop Out Commit" })
map("n", "<leader>gHcz", "<cmd>GHCollapseCommit<cr>", { desc = "Collapse Commit" })

map("n", "<leader>gHi", "", { desc = "Issue" })
map("n", "<leader>gHip", "<cmd>GHPreviewIssue<cr>", { desc = "Preview Issue" })

map("n", "<leader>gHl", "", { desc = "Litee" })
map("n", "<leader>gHlt", "<cmd>LTPanel<cr>", { desc = "Toggle Panel" })


map("n", "<leader>gHr", "", { desc = "Review" })
map("n", "<leader>gHrb", "<cmd>GHStartReview<cr>", { desc = "Begin Review" })
map("n", "<leader>gHrc", "<cmd>GHCloseReview<cr>", { desc = "Close Review" })
map("n", "<leader>gHrd", "<cmd>GHDeleteReview<cr>", { desc = "Delete Review" })
map("n", "<leader>gHre", "<cmd>GHExpandReview<cr>", { desc = "Expand Review" })
map("n", "<leader>gHrs", "<cmd>GHSubmitReview<cr>", { desc = "Submit Review" })
map("n", "<leader>gHrz", "<cmd>GHCollapseReview<cr>", { desc = "Collapse Review" })

map("n", "<leader>gHp", "", { desc = "Pull Request" })
map("n", "<leader>gHpc", "<cmd>GHClosePR<cr>", { desc = "Close PR" })
map("n", "<leader>gHpd", "<cmd>GHPRDetails<cr>", { desc = "PR Details" })
map("n", "<leader>gHpe", "<cmd>GHExpandPR<cr>", { desc = "Expand PR" })
map("n", "<leader>gHpo", "<cmd>GHOpenPR<cr>", { desc = "Open PR" })
map("n", "<leader>gHpp", "<cmd>GHPopOutPR<cr>", { desc = "PopOut PR" })
map("n", "<leader>gHpr", "<cmd>GHRefreshPR<cr>", { desc = "Refresh PR" })
map("n", "<leader>gHpt", "<cmd>GHOpenToPR<cr>", { desc = "Open To PR" })
map("n", "<leader>gHpz", "<cmd>GHCollapsePR<cr>", { desc = "Collapse PR" })

map("n", "<leader>gHt", "", { desc = "Thread" })
map("n", "<leader>gHtc", "<cmd>GHCreateThread<cr>", { desc = "Create Thread" })
map("n", "<leader>gHtn", "<cmd>GHNextThread<cr>", { desc = "Next Thread" })
map("n", "<leader>gHtt", "<cmd>GHToggleThread<cr>", { desc = "Toggle Thread" })

