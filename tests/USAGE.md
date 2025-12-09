# 驗證說明

1. 確保已安裝 `folke/which-key.nvim`（LazyVim 預設已包含）
2. 將本插件加入 `lazy.nvim` 列表並呼叫 `require("lazyvim_chinese").setup()`
3. 開啟 Neovim，按 `<Space>u` 開啟 UI 菜單，看到新增 `C` 項
4. 按 `<Space>uC`：
    - 第一次：啟用中文化，WhichKey 分組顯示中文
    - 再次按：停用中文化，恢復英文

如需擴展中文映射，編輯 [translate.lua](../lua/lazyvim_chinese/translate.lua)。
