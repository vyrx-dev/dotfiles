return {
  "vyrx-dev/sloat",
  opts = {
    float = {
      width = 0.4, -- bigger float
      height = 0.5,
      border = "single", -- different border
    },
    bottom = {
      height = 15, -- taller bottom split
    },
    root_patterns = { ".git", "Cargo.toml" }, -- custom root detection
  },
  keys = {
    { ";t", "<cmd>Sloat float<cr>", mode = { "n", "t" } },
    { ";st", "<cmd>Sloat bottom<cr>" },
    { ";d", "<cmd>Sloat kill<cr>" },
  },
}
