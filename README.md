# Neovim Config

Some setup notes about my config for my future self and any travelers.

## Languages, LSPs, & Formatters

- LSPs are configured in the **/lsp** directory as they should be in Neovim 0.11+
- The LSP servers and formatters are installed as OS packages

### Codebook LSP Spell Checker

I prefer the Codebook LSP for spell checking code. Spell checkers in general don't understand
coding conventions, this spell checker does taking language syntax into consideration before
making a suggestion.

- [x] codebook
- [x] Disable Neovim spell check when in use, otherwise default back to Neovim's builtin spell
      check. See **options.lua** for the auto command snippet.

### Markdown

Markdown linting, completions, goto definition, references, renames, diagnostics, and more.

- [x] marksman

### Formatting Popular File Types

Dprint can format various common file types for consistency using it's plugin system.

- [x] dprint
  - typescript
  - json
  - markdown
  - toml
  - dockerfile
  - jupyter
  - markup (HTML, Vue, Svelte, Astro, XML, etc)
  - YAML

> _Note:_ Plugins should be installed with a global config (`dprint init --global`), and optionally
> a per project override config.

### Lua

I only really use this for Neovim configuration, basic LSP with a lua style formatter.

- [x] lua_ls
- [x] stylua

### Python

Python requires multiple LSPs for different things. _ruff_ is primarily used for formatting/linting
and _basedpyright_ is used for type checking, completions, go to definition, etc (everything else).

- [x] basedpyright
- [x] Ruff (documentation hover is disabled in favor of basedpyright)

### Rust

Rustup manages the Rust toolchain. Once Rustup is installed, its relevant components are added
to Neovim.

- [x] rustup
  - [x] rust-analyzer
    - [x] clippy (swapped for 'cargo check')
  - [x] rustfmt

### Docker

LSP for Docker that provides some nice features for the ecosystem.

- [x] docker-language-server

> _Note:_ The Docker Language Server relies on some features that are dependent on
> [Buildx](https://github.com/docker/docker-language-server?tab=readme-ov-file#requirements).
> If Buildx is not available as a Docker CLI plugin then those features will not be available.

### YAML

Schema validation from the [JSON Schema Store](https://www.schemastore.org/). This works well
with things like Docker Compose.

- [x] yaml-language-server

## Plugins

_lazy.nvim_ is being used to manage plugins (not to be confused with ***L*azy.nvim**).

### Themes

Some of my favorite themes that don't bother my eyes.

- [x] Kanso
- [x] Vague (Customized)

### Viewing Markdown Files

_Markdown Preview_ is being used to render markdown in a Github like format.

- [x] Markdown Preview (requires yarn to build, browser based preview)
- [x] Markview (inline terminal based preview)

### Completions

Blink is being used to power completions via LSPs/snippets. I chose this over _nvim-cmp_
because it is much easier to setup and works well enough.

- [x] Blink

### Formatting

Conform is used with my formatters for keymap consistency.

- [x] Conform

### Language Parsers

Treesitter is being used for highlighting, indentation, and incremental selection.

_Neovim `smartindent` is disabled when using this._

- [x] Treesitter
- [ ] TODO: Treesitter text objects to jump between functions and such.

### Fuzzy Finder

Snacks picker is being used to fuzzy find over buffer, files, grep, diagnostics, etc.

- [x] Snacks Picker

### Code Action Menu

I like a customizable inline LSP code action popup.

- [x] Tiny code action (disabled)
- [x] Snacks Picker

### Jump Navigation

Jump to to a location in view directly.

- [x] Flash

### Surrounds

Manipulate matching character pairs easily.

- [x] Nvim Surround

### Git Integration

Gitsigns is being used to work with hunks in the buffer as well as mark changes,
Neogit is used for everything else.

- [x] Git signs
- [x] Neogit
- [x] Diffview

### TODO Highlight

- [x] Todo comments

### Scratch Buffers & Center windows

Center windows while gaining some scratch buffers. I use the scratch buffers similarly
to the Jetbrains scratch file feature.

- [x] No Neck Pain

### File Exploration

Explore and modify file trees quickly.

- [x] Snacks Explorer
- [x] Oil Nvim

### LazyDev

Configure the lua-ls language server for editing Neovim configuration (configures the lsp for
the Neovim environment quick and easily).

- [x] LazyDev

### Buffer Management

Switch around bookmarked buffers easily.

- [x] Arrow buffer manager
