# dotfiles
My dotfiles for Linux

## Requirements
Required programs fall into 2 categories: Wanted and Addon.
Wanted Programs are tools that integrate tightly into the dotfiles and should be installed to get a recommended setup.
Addon Programs are tools that add extra functionality that can be easily disregarded if you don't need them.

### Wanted
- [qtile](https://github.com/qtile/qtile)
- [bat](https://github.com/sharkdp/bat)
- [onefetch](https://github.com/o2sh/onefetch)
- [pfetch](https://github.com/dylanaraps/pfetch)

### Addon
- [youtube-dl](https://github.com/ytdl-org/youtube-dl) + [ffmpeg](https://github.com/FFmpeg/FFmpeg)

## Setup
For setup, clone this repository in your home directory using `git clone https://github.com/ixhbinphoenix/dotfiles`.
Configure all dotfiles before running the setup script, as it will break stuff if not configured correctly
cd into the dotfiles directory and run `./setup.sh`. The setup script will backup all your dotfiles with a .predot suffix and symlink the new ones into the correct locations
