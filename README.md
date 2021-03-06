# .vim
My Vim setup using Pathogen as a package manager. It does not use submodules yet. I designed it to be "plug-and-play". That is also why I chose Pathogen as a package manager, it required nothing from the user. 


## Installation
On Ubuntu, the Windows 10 Ubuntu Kernel, Debian or in Cygwin:

```
cd ~
git clone "https://github.com/Sceluswe/.vim/"
cp ~/.vim/.vimrc ~
```

If you're using Cygwin make sure you install Cygwins version of Git, otherwise gitgutter and fugitive won't work.

You might have to clone onedark anew. Sometimes it doesn't work.



## Packages
https://vimawesome.com/plugin/delimitmate

https://vimawesome.com/plugin/nerdtree-red

https://vimawesome.com/plugin/onedark-vim

https://vimawesome.com/plugin/syntastic

https://vimawesome.com/plugin/tcomment

https://vimawesome.com/plugin/lightline-vim

https://vimawesome.com/plugin/buftabline

https://vimawesome.com/plugin/fugitive-vim

https://vimawesome.com/plugin/vim-gitgutter




## Modifications
The .vimrc file contains some of my prefered modifications and additional fixes.

- Enter paste mode by pressing F2
- Press F3 to open the NERDTree
- Press TAB or shift-TAB to switch between buffers.
- ttimeoutlen set to 0 to remove delays when switching modes.

### Fugitive
- `:Gstatus` does `git status` inside Vim. Place cursor at the file line and press `-` to add/reset files.
- `:Gcommit -m "your message"` does `git commit -m` inside Vim.


## Result
![Imgur](https://i.imgur.com/24sEy7D.png)

## Future improvements
1. Add full mouse support.

## Fixed Issues
- Change the airline and tabline to fit the overall style better.
- Fix syntax checker error.
- Replace buf-tabline, onedark and lightline submodules with repo files.
