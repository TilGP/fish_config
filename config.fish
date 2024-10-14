if status is-interactive
    # Commands to run in interactive sessions can go heres
    alias bp bpython
    alias vim nvim $1
    alias :qa exit
    alias :q exit
    alias ll "ls -lah $1"

    set LBIN ~/.local/bin/
end

set PATH ~/.linuxify ~/.cargo/bin /opt/homebrew/opt/llvm/bin /opt/homebrew/opt/llvm@15/bin /opt/homebrew/bin /opt/bin ~/.local/bin ~/go/bin $PATH

if test -e $HOME/.cargo/env.fish
    source $HOME/.cargo/env.fish
end

setenv EDITOR nvim
setenv PAGER most
setenv GOPRIVATE bitbucket.org
setenv GOPATH $HOME/go
setenv SSH_SK_PROVIDER /usr/local/lib/libsk-libfido2.dylib
setenv DOCKER_CLI_HINTS false

function cdd
    set dir "$(fd --type d --hidden --follow --exclude .git | fzf +m)" && cd "$dir" || return
end

test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish
