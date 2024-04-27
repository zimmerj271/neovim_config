function ColorMyPencils(color)
   -- set default colorscheme
--   color = color or "gruvbox"
   color = "everforest"
   vim.cmd.colorscheme(color)
   -- Change background to be transparent
   vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
