if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
  fi
fi
