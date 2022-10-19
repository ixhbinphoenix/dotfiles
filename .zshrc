

if [ $(git rev-parse --is-inside-work-tree 2> /dev/null) ]
then
    onefetch 2>/dev/null
else
    uwufetch -i 2>/dev/null
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

### Important globals
export GPG_TTY=${tty}
export WASMTIME_HOME="$HOME/.wasmtime"
export PATH="$HOME/dotfiles/scripts/":"$HOME/.cargo/bin/":"$HOME/.local/bin/":"$HOME/programs/gosumemory_linux_amd64/":"$WASMTIME_HOME/bin":$PATH
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin" # Added by n-install (see http://git.io/n-install-repo).
export CAPACITOR_ANDROID_STUDIO_PATH="/mnt/hdd/programs/android-studio/bin/studio.sh"
# opam is very weird. This is most probably very insecure
eval $(opam env)

### Zinit plugins
zinit ice depth"1"
zinit light romkatv/powerlevel10k

zinit ice blockf
zinit light zsh-users/zsh-completions

zinit light zsh-users/zsh-autosuggestions

autoload -Uz compinit
compinit

zinit cdreplay -q

zinit light zsh-users/zsh-syntax-highlighting
zinit snippet 'https://raw.githubusercontent.com/catppuccin/zsh-syntax-highlighting/main/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh'

### Aliases
alias ls="ls --color=auto -la"
alias cat="bat"
alias java11="/mnt/hdd/programs/jdk-11.0.14.1+1/bin/java"
alias java16="/mnt/hdd/programs/jdk-16.0.1/bin/java"
alias java17="/mnt/hdd/programs/jdk-17.0.1+12/bin/java"
alias gosumemory="sudo gosumemory -path /mnt/hdd/games/osu/drive_c/osu/Songs/"
alias unnamed-sdvx-clone="/opt/unnamed-sdvx-clone/usc-game"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# pnpm
export PNPM_HOME="/home/phoenix/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
