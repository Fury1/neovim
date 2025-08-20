# Neovim Config

Some setup notes about my config for my future self and any travelers.

## Languages, LSPs, & Formatters

- LSPs are configured in the **/lsp** directory as they should be in Neovim 0.11+
- The LSP servers and formatters are installed as OS packages

***

### Codebook LSP Spell Checker

I prefer the Codebook LSP for spell checking code. Spell checkers in general don't 
understand coding conventions, this spell checker does taking language syntax into consideration 
before making a suggestion.

- [x] LSP Codebook spell checker
- [x] Disable Neovim spell check when in use, otherwise default back to Neovim's builtin spell 
check. See **options.lua** for the auto command snippet.

***

### Lua

I only really use this for Neovim configuration, basic LSP with a lua style formatter.

- [x] lua_ls 
- [x] stylua

***

### Python

Python requires multiple LSPs for different things. *ruff* is primarily used for formatting/linting
and *basedpyright* is used for type checking, completions, go to definition, etc (everything else).

- [ ] pylsp + Rope (incomplete)
- [x] pyright (disabled)
- [x] basedpyright
- [x] Ruff (Documentation hover is disabled in favor of pyright/basedpyright)

***

### Rust

Rustup manages the Rust toolchain. Once Rustup is installed, its relevant components are added
to Neovim.

- [x] rustup
    - [x] - rust-analyzer
        - [x] - clippy (swapped for 'cargo check')
    - [x] - rustfmt

***

## Plugins

*lazy.nvim* is being used to manage plugins (not to be confused with ***L*azy.nvim**).

***

### Themes

Some of my favorite themes that don't bother my eyes.

- [x] Kanso
- [x] Vague (Customized)

***

### Viewing Markdown Files

*Peek* is being used to render markdown in a Github like format. One thing to note with this plugin
is that *webkit may have a problem if Nvidia proprietary drivers (linux) are being used*. 
**Peek depends on webkit to create the preview window**. The following snippet should be added to 
**.zshrc** or the like to fix it for now (it will have no effect if AMD drivers are being used).

```
#.zshrc

# Check if an nvidia driver is actively running.
if [[ -f /proc/driver/nvidia/version ]]; then
export WEBKIT_DISABLE_COMPOSITING_MODE=1
fi
```

- [x] peek (may require the build command to be run manually from the root of 
the plugin on failure during first install)

***

### Completions

Blink is being used to power completions via LSPs/snippets. I chose this over _nvim-cmp_ 
because it is much easier to setup and works well enough.

- [x] Blink 

***

### Formatting

Conform is used with my formatters for keymap consistency.

- [x] Conform

***

### Language Parsers

Treesitter is being used for highlighting, indentation, and incremental selection.

*Neovim `smartindent` is disabled when using this.* 

**NOTE: This should be updated to the 'main' branch eventually.**

- [x] Treesitter
- [ ] TODO: Treesitter text objects to jump between functions and such.

***

### Fuzzy Finder

Telescope is being used to fuzzy find over buffer, files, grep, jumps, diagnostics, etc.

- [x] Telescope w/ fzf-native

***

### Code Action Menu

I like a customizable inline LSP code action popup.

- [x] Tiny code action

***

### Jump Navigation

Jump to to a location in view directly.

- [x] Flash

***

### Surrounds

Manipulate matching characters pairs easily.

- [x] Vim Surround

***

### Git Integration

Gitsigns is being used to work with hunks in the buffer as well as mark changes,
Fugitive is used for everything else. 

- [x] - Git signs
- [x] - Vim Fugitive

***

### TODO Highlight

- [x] Todo comments

***

### Scratch Buffers & Center windows

Center windows while gaining some scratch buffers. I use the scratch buffers similarly 
to the Jetbrains scratch file feature.

- [x] No Neck Pain

***

### Neotree

Netrw with features!

- [x] Neotree

***

### Buffer Management

Switch around bookmarked buffers easily.

- [x] Arrow buffer manager
