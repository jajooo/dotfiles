<h1 align="center">Arch Linux Hyprland dotfiles</h1>

<p align="center">My personal dotfiles.</p>

![2023-12-11-171507_hyprshot](https://github.com/jajooo/dotfiles/assets/93209510/b1cf3e7d-5e2b-46d2-ac5f-67ba2fa52344)

# To-do list
- [x] Add dependencies
- [x] Fix scripts
- [ ] Fix variables in config files
- [ ] Add vim config files
- [ ] Add more config files

# Getting Started

### To use these dotfiles, follow these steps:

1. Install Yay:

```
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```

2. Install dependencies using Yay:

```
yay -S wlogout ttf-twemoji ttf-all-the-icons
```

3. Install dependencies using Pacman:

```
sudo pacman -S abseil-cpp adobe-source-code-pro-fonts adwaita-cursors adwaita-icon-theme alsa-card-profiles at-spi2-core atkmm avahi cairo cairomm cantarell-fonts cdparanoia chrono-date dconf default-cursors desktop-file-utils double-conversion fmt fontconfig freetype2 fribidi glib-networking glibmm graphene graphite gsettings-desktop-schemas gst-plugins-base gst-plugins-base-libs gstreamer gtk-layer-shell gtk-update-icon-cache gtk3 gtkmm3 harfbuzz iso-codes json-glib jsoncpp kconfig5 kcoreaddons5 kitty-shell-integration knotifications5 kwindowsystem5 lcms2 libappindicator-gtk3 libb2 libcamera libcamera-ipa libcanberra libcloudproviders libcolord libcups libdaemon libdatrie libdbusmenu-glib libdbusmenu-gtk3 libdbusmenu-qt5 libdrm libepoxy libfdk-aac libfreeaptx libinput liblc3 libldac libmpdclient libmysofa libomxil-bellagio libpciaccess librsync libsoup3 libstemmer libthai libtheora libunwind libwacom libwireplumber libxcomposite libxcursor libxdamage libxdg-basedir libxfixes libxft libxi libxinerama libxkbcommon libxkbcommon-x11 libxrandr libxrender libxshmfence libxtst libxxf86vm md4c mesa mtdev openal orc pango pangomm pixman qt5-base qt5-declarative qt5-multimedia qt5-speech qt5-translations qt5-wayland qt5-x11extras qt6-base qt6-translations sbc serd sndio sord sound-theme-freedesktop sratom startup-notification tracker3 tslib upower vulkan-headers vulkan-icd-loader wayland webrtc-audio-processing wireplumber xcb-util xcb-util-cursor xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-xrm xkeyboard-config zix copyq dunst fish kitty neofetch qt5ct qt6ct ranger waybar tdb wofi rofi python-pywal otf-font-awesome pipewire pipewire-audio pipewire-jack pipewire-session-manager sof-firmware libpipewire
```

4. Install omf:

```
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
```

5. Install Archdroid icon theme:

```
git clone https://github.com/GreenRaccoon23/archdroid-icon-theme.git && cd archdroid-icon-theme && chmod +x archdroid-icon-theme.install && bash archdroid-icon-theme.install
```

6. Clone the repository:

```
git clone https://github.com/jajooo/dotfiles.git
```

## Images

![2023-12-11-171451_hyprshot](https://github.com/jajooo/dotfiles/assets/93209510/aac7a046-1f0c-4f3b-b6fb-9624a21b9bd6)
![2023-12-11-171507_hyprshot](https://github.com/jajooo/dotfiles/assets/93209510/b1cf3e7d-5e2b-46d2-ac5f-67ba2fa52344)
![2023-12-11-171527_hyprshot](https://github.com/jajooo/dotfiles/assets/93209510/ef1dd674-b49d-4c36-8df7-3671ceb47601)
![2023-12-11-171542_hyprshot](https://github.com/jajooo/dotfiles/assets/93209510/b1f1f130-f9c8-4eca-9982-f39ce299dae2)


## Video

https://github.com/jajooo/dotfiles/assets/93209510/a1dadcca-e4cd-4491-b3f7-1bc64538fc0b

