# nvim_config for lua
Backup of nvim config files.

# Fast Installation
Run the experimental and highly(maybe) dangerous `install.sh`.

# Installation
1. Install NeoVim with aptitude `sudo apt install neovim`
2. Clone this repo to `~/.config/nvim/
3. Install python support with `sudo apt-get install python3-neovim`
4. Install Node-JS from [here](https://github.com/nodesource/distributions/blob/master/README.md)
5. Verify installation with `:checkhealth lazy` in nvim to verify plugin manager is installed correctly. To then check all installed plugins run `:Lazy check`.

# Fonts Installation for Icon Support
This requires the installation of a nerd font on the system which can be done by modifying and executing the commands below:

```bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hermit.zip
unzip Hermit.zip -d /usr/share/fonts
```
After this, set the desired font for your terminal and test with Neovim or other to verify everything is working correctly. If you don't see the font appear in the list of options for your terminal, you may need to restart your system.
