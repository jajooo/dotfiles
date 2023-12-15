#!/bin/bash

clear
cat ascii.txt
echo
echo
sleep 2
echo "This script will install dependencies" 
echo
echo
sleep 1
echo "Do you want to proceed? (y/n)"
read choice

if [ "$choice" == "y" ]; then
    echo "Installing dependencies"
        cd ~
        sudo pacman -S --noconfirm --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
        cd ~
        yay -S --noconfirm wlogout ttf-twemoji ttf-all-the-icons
        cd ~
        sudo pacman -S --noconfirm abseil-cpp adobe-source-code-pro-fonts adwaita-cursors adwaita-icon-theme alsa-card-profiles at-spi2-core atkmm avahi cairo cairomm cantarell-fonts cdparanoia chrono-date dconf default-cursors desktop-file-utils double-conversion fmt fontconfig freetype2 fribidi glib-networking glibmm graphene graphite gsettings-desktop-schemas gst-plugins-base gst-plugins-base-libs gstreamer gtk-layer-shell gtk-update-icon-cache gtk3 gtkmm3 harfbuzz iso-codes json-glib jsoncpp kconfig5 kcoreaddons5 kitty-shell-integration knotifications5 kwindowsystem5 lcms2 libappindicator-gtk3 libb2 libcamera libcamera-ipa libcanberra libcloudproviders libcolord libcups libdaemon libdatrie libdbusmenu-glib libdbusmenu-gtk3 libdbusmenu-qt5 libdrm libepoxy libfdk-aac libfreeaptx libinput liblc3 libldac libmpdclient libmysofa libomxil-bellagio libpciaccess librsync libsoup3 libstemmer libthai libtheora libunwind libwacom libwireplumber libxcomposite libxcursor libxdamage libxdg-basedir libxfixes libxft libxi libxinerama libxkbcommon libxkbcommon-x11 libxrandr libxrender libxshmfence libxtst libxxf86vm md4c mesa mtdev openal orc pango pangomm pixman qt5-base qt5-declarative qt5-multimedia qt5-speech qt5-translations qt5-wayland qt5-x11extras qt6-base qt6-translations sbc serd sndio sord sound-theme-freedesktop sratom startup-notification tracker3 tslib upower vulkan-headers vulkan-icd-loader wayland webrtc-audio-processing wireplumber xcb-util xcb-util-cursor xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-xrm xkeyboard-config zix copyq dunst fish kitty neofetch qt5ct qt6ct ranger waybar tdb wofi rofi python-pywal otf-font-awesome pipewire pipewire-audio pipewire-jack pipewire-session-manager sof-firmware libpipewire
        cd ~
        curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
        cd ~
        git clone https://github.com/GreenRaccoon23/archdroid-icon-theme.git && cd archdroid-icon-theme && chmod +x archdroid-icon-theme.install && bash archdroid-icon-theme.install
        cd ~
        echo "Installation completed"
        sleep 10
        exit
elif [ "$choice" == "n" ]; then
    echo "Exiting."
    exit 0
else
    echo "Invalid choice. Please enter 'y' to proceed or 'n' to exit."
    exit 1
fi
