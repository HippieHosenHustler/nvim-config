local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  return
end

wk.setup {
}

wk.register({
  e = { "<cmd>NvimTreeToggle<cr>", "Open File Tree" },
  f = { "<cmd>Telescope find_files<cr>", "File Search" },
  s = { "<cmd>Telescope live_grep<cr>", "Fulltext Search" },
  g = {
    name = "Git",
    g = { "<cmd>LazyGit<cr>", "Open Lazygit" },
    x = { "<cmd>LazyGitConfig<cr>", "Configure Lazygit" },
    c = { "<cmd>LazyGitFilter<cr>", "View Commits" },
    f = { "<cmd>LazyGitFilterCurrentFile<cr>", "View Commits for current file" }
  },
  t = {
    name = "Terminal",
    f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
    t = { "<cmd>ToggleTerm direction=tab<cr>", "Tab" }
  }
}, { prefix = "<leader>" })
