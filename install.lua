#!/usr/bin/lua

-- copy this directory to ~/.config/nvim
os.execute([[cp -r * ~/.config/nvim]])

-- install Node-JS
os.execute([[curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs]])

-- install fonts
os.execute([[wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/Hack.zip &&
unzip Hack.zip -d /usr/share/fonts]])

-- warn user to restart
io.write("NOTE: you should restart to see font options updated")

-- install kitty
os.execute([[curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin]])

-- [[
--# Create symbolic links to add kitty and kitten to PATH (assuming ~/.local/bin is in
--# your system-wide PATH)
--# Place the kitty.desktop file somewhere it can be found by the OS
--# If you want to open text files and images in kitty via your file manager also add the kitty-open.desktop file
--# Update the paths to the kitty and its icon in the kitty.desktop file(s)
-- ]]
os.execute([[ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/ &&
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/ &&
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/ && 
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop &&
sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
]])
