# YouTube & Media Transcripts

This folder contains transcripts and related documents from YouTube and other streaming media services.

## File Template

Use `transcript-template.md` as a starting point for new transcript files. The template includes:

### Frontmatter Fields
- **title**: Video/content title
- **source**: Platform (youtube, vimeo, twitch, etc.)
- **url**: Direct link to the original content
- **video_id**: Platform-specific ID
- **channel**: Channel/creator name
- **author**: Content creator
- **date_published**: When the content was published
- **date_retrieved**: When you saved the transcript
- **duration**: Length of the content
- **tags**: Categories for Obsidian organization
- **description**: Brief description of the content

### Suggested Tags
- `political`
- `farm`
- `garden`
- `diabetes`
- `health`
- `cooking`
- `technology`
- `education`
- (Add your own as needed)

## Using the Template in Neovim

### Auto-load Template for New Files

To automatically load the template when creating new `.md` files in this directory:

1. **Copy the template to your neovim config directory:**
   ```bash
   mkdir -p ~/.config/nvim/templates
   cp transcript-template.md ~/.config/nvim/templates/
   ```

2. **Add the autocmd to your `init.vim`:**
   ```vim
   augroup TranscriptTemplate
     autocmd!
     autocmd BufNewFile */youtube-transcripts/*.md 0r ~/.config/nvim/templates/transcript-template.md | normal! Gdd
   augroup END
   ```

3. **Or for `init.lua`:**
   ```lua
   vim.api.nvim_create_autocmd("BufNewFile", {
     pattern = "*/youtube-transcripts/*.md",
     callback = function()
       vim.cmd('0r ~/.config/nvim/templates/transcript-template.md')
       vim.cmd('normal! Gdd')
     end,
   })
   ```

### Manual Template Loading

If you prefer not to auto-load, you can manually insert the template in neovim:
```vim
:r transcript-template.md
```

### Helpful Neovim Plugins for TTY Use
- `vim-markdown` or `nvim-treesitter` - Syntax highlighting for markdown and YAML
- `bullets.vim` - Easy list editing for tags
- `telescope.nvim` with `live_grep` - Search transcripts by content or tags

## File Naming Convention

Suggested format: `YYYY-MM-DD_channel-name_video-title.md`

Example: `2025-11-05_healthchannel_managing-diabetes.md`

## Usage with Obsidian

The YAML frontmatter is fully compatible with Obsidian. You can:
- Search by tags using `tag:#tagname`
- Use Dataview plugin to query transcripts by metadata
- Create tag hierarchies (e.g., `health/diabetes`)
