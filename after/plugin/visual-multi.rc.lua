local vvm_status, visual_multi = pcall(require, "vim-visual-multi")
if not vvm_status then
  return
end

visual_multi.setup()
