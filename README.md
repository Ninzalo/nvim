## Preparations

#### With Brew (MacOS only)

- Install Brew

  ```sh
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

- Update brew: `brew update`

- Install Neovim: `brew install neovim`

- Install additional packages: `brew install git npm gnu-sed ripgrep jesseduffield/lazygit/lazygit`

- [Optional] Install `pre-commit`: `brew install pre-commit`

- Update packages: `brew upgrade`

## Installation

- Remove or move your current `nvim` directory (if exists)
  ```sh
  mv ~/.config/nvim ~/.config/nvim_bak
  ```
  or
  ```sh
  rm -rf ~/.config/nvim
  ```

- Clear Neovim cache (if exists)
  ```sh
  rm -rf ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
  ```

**IMPORTANT** Requires [Neovim v0.10.0](https://github.com/neovim/neovim/releases). Please [upgrade](https://github.com/neovim/neovim/releases) if you're on an earlier version.

```sh
git clone git@github.com:Ninzalo/nvimconf.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed. (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim)

#### Get healthy

Open `nvim` and enter the following:
```
:checkhealth
```

#### Fonts

Next we need to install [NerdFonts](https://www.nerdfonts.com/font-downloads)

- Create directory `fonts`
  ```sh
  mkdir ~/.local/share/fonts
  ```

- Copy `<FONTS DIRECTORY>/*` to `~/.local/share/fonts`
  ```sh
  cp -rf ./<FONTS DIRECTORY>/* ~/.local/share/fonts/
  ```

- Add to the profile of your terminal

## Pre-commit hook (if you want to use pre-commit)

```sh
pre-commit install
pre-commit autoupdate
pre-commit run --all-files
```

## Shortcuts

#### Main shortcuts

- `<Space>` - shows key mappings

#### Nvim-surround

- `ysiw)` - surround_words -> (surround_words)

- `ds)` - (delete around me) -> delete around me

- `cs'"` - 'change quotes' -> "change quotes"
