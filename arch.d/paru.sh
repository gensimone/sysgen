#!/bin/sh

if ! sudo pacman -S --needed base-devel; then
    echo "Aborted" >&2
    exit 1
fi

if git clone https://aur.archlinux.org/paru.git; then
    cd paru
    makepkg -si
else
    echo "Aborted" >&2
    exit 1
fi
