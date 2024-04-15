vim.g.clipboard = {
   name = "win32yank-wsl",
   copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
   },
   paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
   },
   cache_enabled = true,
}

-- note that this configuration requires win32yank.exe to be saved in the $PATH (preferrably /usr/local/bin).
-- Be sure to make the file executable: `chmod +x win32yank.exe`
