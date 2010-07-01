#
# Umgebungsvariablen
#
export PATH=$PATH:/sw/bin:~/Skripte:/Applications/OpenLaszlo\ Server\ 4.5.1/bin:/usr/local/git/bin/:/usr/lib/python-django/bin
export BOOST_ROOT=/usr/local/boost
export PATH=/opt/local/bin:/bin:/sbin:/usr/bin:/usr/local/bin:/usr/sbin:/sw/bin:/opt/local/bin:/var/lib/gems/1.8/bin:$PATH
export EDITOR=vim

#
# GO settings
#
export GOROOT=$HOME/dev/go/hg
export GOARCH=amd64
export GOOS=linux
export GOBIN=$GO/bin

export PATH=$PATH:$GOBIN

#
# Shortcut-Aliase allgemein und Shell
#
alias grep='grep -i -n --color=auto'
alias '..'='chdir ..'
alias '...'='chdir ../..'
alias '....'='chdir ../../..'
alias ls='ls --color'
alias l='ls -l'
alias la='ls -al'
alias lt='ls -alt'
alias o='open'
alias v='mvim -p'
alias tbz='tar --use-compress-program bzip2 -cvf  '
alias py='python '
autoload -U zmv
alias mmv='noglob zmv -W'
alias oo='~/Skripte/new.zsh'
alias v='gvim 2>/dev/null '

alias lisp="sbcl --script "
alias ilisp="sbcl --noinform"
alias clj="java -cp /usr/share/java:/usr/share/java/clojure-contrib.jar:/usr/share/java/jline.jar:/usr/share/java/clojure.jar jline.ConsoleRunner clojure.main"

alias untar='tar -xzf'

autoload -Uz colors && colors
local text="%{$fg_no_bold[cyan]%}"
local text_emph="%{$fg_bold[cyan]%}"
local punctuation="%{$fg_bold[grey]%}"
local emph="%{$fg_bold[white]%}"
local final="%{$reset_color%}"
PROMPT="%m ${punctuation}[%~]${text} %#${punctuation}${final} "




#
# Fenstertitel Terminal = Pfad
#
function precmd(){ echo -n "]0;$PWD" }


#
# Django Aliase
#
alias djangorun='python manage.py runserver 8080 && http://127.0.0.1:8080/'
alias djangoproject='django-admin.py startproject '
alias djangoapp='python manage.py startapp '
alias djangosync='python manage.py syncdb'
alias djangoshell='python manage.py shell'
alias djangosql='python manage.py sql '
alias djangoload='python manage.py loaddata '




#
# History
#
HISTSIZE=2000 # Größe der History
  SAVEHIST=2000 # Maximale Anzahl der Einträge, die gespeichert werden
  HISTFILE=~/.zsh_history # Speicherort der History

 bindkey '\e[A'  up-line-or-history
    bindkey '\e[B'  down-line-or-history
    bindkey '\e[C'  forward-char
    bindkey '\e[D'  backward-char
    bindkey '\eOA'  up-line-or-history
    bindkey '\eOB'  down-line-or-history
    bindkey '\eOC'  forward-char
    bindkey '\eOD'  backward-char



#
# Completions
#
# Viele vorinstallierte Completions fur *diverse* Programme.
# Dauert einige Zeit zum Laden, ca. 0.5 sec.
  autoload -U compinit ; compinit
# U.A. farbige Completion
  zmodload -i zsh/complist

# Maximal zwei Fehler pro Kommando.
# zstyle ':completion:*:correct:*' max-errors 2 numeric
# Fugt den ursprunglich eingegebenen String auch als Completion auf.
  zstyle ':completion:*:correct:*' original true
  zstyle ':completion:*:correct:*' insert-unambiguous true # RTFM :P

# Welche Funktionen sollen zur Vervollstandigung genutzt werden?
  zstyle ':completion:*' completer _complete _correct _approximate
# Globbing
  zstyle ':completion:*' glob true

# Verbose. Immer doch!
  zstyle ':completion:*' verbose yes
# Format der Corrections, Warnungen, etc.
  zstyle ':completion:*:corrections' format $'%{\e[0;31m%}%d (errors: %e)%{\e[0m%}'
  zstyle ':completion:*:descriptions' format $'%{\e[0;31m%}%d%{\e[0m%}'
  zstyle ':completion:*:messages' format $'%{\e[0;31m%}%d%{\e[0m%}'
  zstyle ':completion:*:warnings' format $'%{\e[0;31m%}No matches for: %d%{\e[0m%}'
  zstyle ':completion:*' group-name ''
  zstyle -e ':completion:*:approximate:*' max-errors \
      'reply=( $(( ($#PREFIX+$#SUFFIX)/3 )) numeric )'

  zstyle ':completion:*' list-colors ''
  zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Bei der Completion: Menu mit inversen aktiven Eintragen. Cool!
  zstyle ':completion:*' menu yes=long-list
  zstyle ':completion:*' menu select=2

# kill - unglaubliche Completions!
  zstyle ':completion:*:kill:*' command 'ps -U $USER -o pid,%cpu,tty,cputime,command'
  zstyle ':completion:*:kill:*' insert-ids single
  zstyle ':completion:*:*:kill:*' menu yes select
  zstyle ':completion:*:kill:*' force-list always
# less und mutt: Umfangreiches Menu.
  zstyle ':completion:*:*:less:*' menu yes select
  zstyle ':completion:*:*:mutt:*' menu yes select

# zgitinit and prompt_wunjo_setup must be somewhere in your $fpath, see README for more.

setopt promptsubst

# Load the prompt theme system
autoload -U promptinit
promptinit

# Use the wunjo prompt theme
prompt wunjo

bindkey -v
