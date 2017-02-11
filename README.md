# dotfiles

Using (dotfiles)[https://dotfiles.github.io/] to manage my setup  
There are different yaml files in the repo to config my devbox, work laptop and home laptops. 
Installing dotfiles for each can be done by running install with the `--config` param to the file

At the most basic, my environment includes:  
* [Vundle](https://github.com/VundleVim/Vundle.vim) to manage all vim plugins  
* [Powerline shell](https://github.com/banga/powerline-shell)
* eslint_d for Syntastic

## Steps
1. Clone this repo  
2. Get [Vundle](https://github.com/VundleVim/Vundle.vim) and setup by installing  ~/.vim/bundle/Vundle.vim  
3. Setup the dotfiles by running the `./install` script (pass -c or --config to change the config file)  
3. Launch vim and run :PluginInstall to install plugins. You may need to upgrade vim with homebrew then `brew install macvim --override-system-vim` to take advantage of all the plugins
4. In the powerline-shell repo, run ./install.py then symlink the generated powerline-shell.py. Or just use the one I have committed.
5. make sure eslint_d is installed with npm

## About secrets
Keys and other secrets get stored in files `somename.secrets` and are gitignored so this repo can still be public.
