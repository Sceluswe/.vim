# .vim
My Vim setup using Pathogen as a package manager. It does not use submodules yet. I designed it to be "plug-and-play". That is also why I chose Pathogen as a package manager, it required nothing from the user. 


## Installation
Download the package and place it in /home/$YOUR_USERNAME/.vim and then copy the .vimrc file into /home/$yourusername/ on Ubuntu and if you're using the Windows 10 Ubuntu Kernel.

```
cd /home/$YOUR_USERNAME
git clone "https://github.com/Sceluswe/.vim/"
cp /home/$YOUR_USERNAME/.vim/.vimrc /home/$YOUR_USERNAME/
```
If you're using Debian:
```
cd ~
git clone "https://github.com/Sceluswe/.vim"
cp .vim/.vimrc .
```

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
- ttimeoutlen set to 0 to remove delays when switching modes.

### Fugitive
- `:Gstatus` Does `git status` inside Vim. Place cursor at the file line and press `-` to add/reset files.
- `:Gcommit -m "your message"` Does `git commit -m` inside Vim.


## Result
![Imgur](https://i.imgur.com/eWvxxEJ.png)

## Future improvements
1. Add full mouse support.


## Fixed Issues
- Change the airline and tabline to fit the overall style better.
- Find out why the syntax checker currently doesn't work, fix it.
