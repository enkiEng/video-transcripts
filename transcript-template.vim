" Auto-load transcript template for new markdown files in this directory
" Add this to your init.vim or init.lua (converted to lua syntax)

augroup TranscriptTemplate
  autocmd!
  " When creating a new .md file in the youtube-transcripts directory
  autocmd BufNewFile */youtube-transcripts/*.md 0r ~/.config/nvim/templates/transcript-template.md | normal! Gdd
augroup END

" Alternative: If you prefer to keep the template in this directory:
" autocmd BufNewFile */youtube-transcripts/*.md 0r ~/youtube-transcripts/transcript-template.md | normal! Gdd
