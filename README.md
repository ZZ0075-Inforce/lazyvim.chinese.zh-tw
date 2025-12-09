# lazyvim.chinese

離線 LazyVim 菜單中文化插件，為常見 `<leader>` 分組提供中文名稱，並在 `<leader>u` 菜單下增加 `C` 項用於一鍵執行/取消中文化。

## 功能

- 為常見 LazyVim 菜單分組提供中文名稱（例如：`<leader>f` → 查找、`<leader>w` → 窗口等）
- 在 `<leader>u` 菜單下增加 `C` 切換項：開啟/關閉中文化
- 完全離線，無需網絡

## 安裝

使用 `lazy.nvim`：

```lua
{
  "ZZ0075-Inforce/lazyvim.chinese.zh-tw",
  config = function()
    require("lazyvim_chinese").setup()
  end,
}
```

或在任意位置調用：

```lua
require("lazyvim_chinese").setup()
```

開發時配置：`~/.config/nvim/lua/plugins/lazyvim.chinese.zh-tw.lua`

```lua
return {
  {
    dir = "/Users/ZZ0075/IdeaProjects/lazyvim.chinese.zh-tw",
    lazy = false,
    config = function()
      require("lazyvim_chinese").setup()
    end,
  },
}
```

## 使用

- 按 `<Space>uC`（`<leader>uC`）開啟/關閉中文化
- 開啟後 WhichKey 的分組名稱顯示為中文，關閉後恢復英文

## 自定義

可在 `lua/lazyvim_chinese/translate.lua` 中按需增添/修改分組映射。
