#!/bin/bash

# Desktop and things
sudo apt-get install -y i3
sudo apt-get install -y nemo --no-install-recommends
sudo apt-get install -y xdg-user-dirs
sudo apt-get install -y xdg-user-dirs-gtk
xdg-user-dirs update
xdg-user-dirs-gtk update
sudo apt-get install -y polybar
sudo apt-get install -y rofi
sudo apt-get install -y curl
sudo apt-get install -y wget
sudo apt-get install -y polybar
sudo apt-get install -y rofi
sudo apt-get install -y curl
sudo apt-get install -y wget
sudo apt-get install -y polybar
sudo apt-get install -y rofi
sudo apt-get install -y curl
sudo apt-get install -y wget
sudo apt-get install -y slick-greeter
sudo apt-get install -y dex
sudo apt-get install -y scrot
sudo apt-get install -y feh
sudo apt-get install -y zenity
sudo apt-get install -y dunst
sudo apt-get install -y kitty
sudo apt-get install -y alacritty

# Enable slick-greeter
sudo apt-get install -y lightdm
sudo systemctl enable lightdm
sudo systemctl start lightdm

# Firefox
sudo install -d -m 0755 /etc/apt/keyrings

wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null

# The fingerprint should be 35BAA0B33E9EB396F59CA838C0BA5CE6DC6315A3. You may check it with the following command:
gpg -n -q --import --import-options import-show /etc/apt/keyrings/packages.mozilla.org.asc | awk '/pub/{getline; gsub(/^ +| +$/,""); if($0 == "35BAA0B33E9EB396F59CA838C0BA5CE6DC6315A3") print "\nThe key fingerprint matches ("$0").\n"; else print "\nVerification failed: the fingerprint ("$0") does not match the expected one.\n"}'

# Add Mozilla APT repository to sources list:
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null

# Configure APT to prioritize packages from the Mozilla repository:
echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla

# Update and install
sudo apt-get update && sudo apt-get install firefox
