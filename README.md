## Preparations

- Install Brew

  ```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

- Update brew `brew update`

- Install Neovim `brew install neovim`

- Update packages `brew upgrade`

## Installation

- Remove or move your current `nvim` directory (if exists)
```
mv ~/.config/nvim ~/.config/nvim_bak
```
or
```
rm -rf ~/.config/nvim
```

- Clear Neovim cache (if exists)
```
rm -rf ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
```

**IMPORTANT** Requires [Neovim v0.8.0](https://github.com/neovim/neovim/releases). Please [upgrade](#upgrade-to-latest-release) if you're on an earlier version.

```
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

- Change directory to `~/.local/share/`
  ```
  cd ~/.local/share
  ```

- Create directory `fonts`
  ```
  mkdir fonts
  ```

- Change directory to `~/.config/nvim`
  ```
  cd ~/.config/nvim
  ```

- Copy `./fonts/*` to `~/.local/share/fonts`
  ```
  cp -rf ./fonts/* ~/.local/share/fonts/
  ```

- Add to the profile of your terminal

## Shortcuts

#### Main shortcuts

- `<Space>` - shows key mappings

#### Nvim-surround

- `ysiw)` - surround_words -> (surround_words)

- `ds)` - (delete around me) -> delete around me

- `cs'"` - 'change quotes' -> "change quotes"
