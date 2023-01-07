## Preparations: 

- Install Brew 

  ```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

- Install Nvim `brew install neovim`

- Update packages `brew update`


## Try out this config

Make sure to remove or move your current `nvim` directory

**IMPORTANT** Requires [Neovim v0.8.0](https://github.com/neovim/neovim/releases). Please [upgrade](#upgrade-to-latest-release) if you're on an earlier version. 
```
git clone git@github.com:Ninzalo/nvimconf.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed. (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim) 

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```


Next we need to install python support (node is optional)

- Neovim python support

  ```
  pip install pynvim
  ```

- Neovim node support

  ```
  npm i -g neovim
  ```
---

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

Install `black`

- `xcode-select --install`

- `brew install black`
