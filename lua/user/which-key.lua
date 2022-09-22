local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  return
end

wk.setup {
}

wk.register({
  e = { "<cmd>NvimTreeToggle<cr>", "Open File Tree" },
  f = { "<cmd>Telescope find_files<cr>", "File Search" },
  t = { "<cmd>Telescope live_grep", "Fulltext Search" },
}, { prefix = "<leader>" })
