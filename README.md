# Dotfiles

***

## .bashrc

 ```html
- Prompts with Git info if the current directory is a Git repository
- Sources aliases in .bash_aliases, .bash_aliases_ssh, .bash_aliases_git
- Prompts Fortune quotes on session startup ;-)
 ```

## .profile

 ```html
- Sources .bashrc
 ```

## .zshrc

 ```bash
- Requires $HOME/.oh-my-zsh
- Requires powerlevel9K theme
 ```

## .vimrc

- Stolen from [spf13-vim](https://github.com/spf13/spf13-vim "spf13-vim") (Requires Git 1.7+ and Vim 7.3+)

```bash
- Installation:
    curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
    ln -s $HOME/to/spf13-vim3/.vimrc $HOME/.vimrc
    ln -s $HOME/to/spf13-vim3/.vimrc $HOME/.vimrc.before
    ln -s $HOME/to/spf13-vim3/.vimrc $HOME/.vimrc.bundles

- Update:
    curl https://j.mp/spf13-vim3 -L -o - | sh
    -- OR --
    cd $HOME/to/spf13-vim3/
    git pull
    vim +BundleInstall! +BundleClean +q
```

- Alternatives:
    - [spf13-vim](https://github.com/spf13/spf13-vim "spf13-vim") is a bit outdated (last commit was on 2016).
    - [space-vim](https://github.com/liuchengxu/space-vim "space-vim")  and [EverVim](https://github.com/LER0ever/EverVim "EverVim") are similar projects, but more active.
