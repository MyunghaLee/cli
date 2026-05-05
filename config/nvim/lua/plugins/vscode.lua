return {
  {
    "mofiqul/vscode.nvim",
    lazy = false, -- 테마는 시작할 때 바로 로드되어야 하므로 false
    priority = 1000, -- 다른 플러그인보다 먼저 로드되도록 높은 우선순위 설정
    config = function()
      -- 테마 설정 (옵션)
      require("vscode").setup({
        -- 투명 배경을 원하면 true로 설정 hello
        transparent = true,
        -- 주석을 이탤릭체로 설정
        italic_comments = true,
      })

      -- 실제 colorscheme 적용
      vim.cmd.colorscheme("vscode")
    end,
  },
}
