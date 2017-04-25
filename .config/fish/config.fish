if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end

set -gx TERM xterm-256color
set -gx GOROOT /usr/local/go
set -gx GOPATH /golang
set -gx PATH $PATH $GOROOT/bin/ $GOPATH/bin
