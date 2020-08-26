#!/usr/bin/env sh
# Settings
export TERMINAL='alacritty'
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_DIRS="$HOME/.local/share/:/usr/local/share/:/usr/share/"

# Native display
export BEMENU_BACKEND='wayland'
export MOZ_ENABLE_WAYLAND=1
export GDK_BACKEND='wayland'
export XDG_SESSION_TYPE='wayland'
export QT_QPA_PLATFORM='wayland'
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export CLUTTER_BACKEND='wayland'
export SDL_VIDEODRIVER='wayland'
export ECORE_EVAS_ENGINE='wayland_egl'
export ELM_ENGINE='wayland_egl'

# Bug fixing
export _JAVA_AWT_WM_NONREPARENTING=1
