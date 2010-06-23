set columns=120
set lines=57
set go-=T

set bg=dark
if &background == "dark"
    hi normal guibg=black
    "set transp=6
endif

colors joerg
set guifont=Bitstream\ Vera\ Sans\ Mono\ 9

python << EOF
import os
import sys
import vim
for p in sys.path:
    if os.path.isdir(p):
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF

