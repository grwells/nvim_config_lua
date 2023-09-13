# nvim_config for lua
Backup of nvim config files.

# Fast Installation
Run the experimental and highly(maybe) dangerous `install.sh`.

# Installation
1. Install NeoVim with aptitude `sudo apt install neovim`.
   * _**NOTE:**_ the aptitude version is often several versions behind the latest stable release provided on github.
   * _**installing for x86 architectures:**_ Download latest AppImage with `wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage`. Then install by making executable and creating symbolic link nvim in `/usr/local` and adding to path.
   * _**for raspberrypi and other SBCs:**_ Follow these instructions to [build from source](https://github.com/neovim/neovim/wiki/Building-Neovim)
3. Clone this repo to `~/.config/nvim/ with `git clone https://github.com/grwells/nvim_config_lua.git && mv nvim_config_lua ~/.config/nvim`
4. Install python support with `sudo apt-get install python3-neovim`
5. Install Node-JS from [here](https://github.com/nodesource/distributions/blob/master/README.md)
   * _**installing for x86 architectures:**_ [instructions here](https://github.com/nodesource/distributions#installation-instructions)
   * _**installing for raspberrypi and other SBCs:**_ if you have snap it is as simple as `sudo snap install node --classic --channel=<version_desired_ex_16>`
7. Verify installation with `:checkhealth lazy` in nvim to verify plugin manager is installed correctly. To then check all installed plugins run `:Lazy check`.

# Fonts Installation for Icon Support
This requires the installation of a nerd font on the system which can be done by modifying and executing the commands below:

```bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hermit.zip
unzip Hermit.zip -d /usr/share/fonts
```
After this, set the desired font for your terminal and test with Neovim or other to verify everything is working correctly. If you don't see the font appear in the list of options for your terminal, you may need to restart your system.
