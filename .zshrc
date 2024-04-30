# Configurações ZSH + OhmyZSH + Logo-ls + fzf + powerlevel9k


# Veja os temas disponíveis em https://github.com/ohmyzsh/ohmyzsh/wiki/Themes


# Defina o nome do tema para carregar --- se definido como "random", ele irá
# carrega um tema aleatório cada vez que oh-my-zsh é carregado, nesse caso,
# para saber qual específico foi carregado, execute: echo $RANDOM_THEME
# Defina uma lista de temas para escolher ao carregar aleatoriamente
# Definir esta variável quando ZSH_THEME=random fará com que o zsh carregue
# um tema desta variável em vez de procurar em $ZSH/themes/
# Se definida como um array vazio, esta variável não terá efeito.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Atualização automática do ZSH
zstyle ':omz:update' mode auto      # atualizar automaticamente sem perguntar
zstyle ':omz:update' frequency 7   # frequência de atualização automática (em dias)


# Plugins
# Plugins padrão podem ser encontrados em $ZSH/plugins/
# Plugins personalizados podem ser adicionados a $ZSH_CUSTOM/plugins/
# Formato de exemplo: plugins=(rails git textmate ruby lighthouse)
# Adicione com sabedoria, pois muitos plugins retardam a inicialização do shell.
plugins=(git
	ubuntu
	aliases
	fd
	dotenv
	fzf
	lxd
	nmap
	npm
	pip
	pipenv
	pyenv
	rust
	starship
	sudo
	ufw
	themes
	zsh-interactive-cd
	zsh-navigation-tools
	systemadmin
	exa
)


# export MANPATH="/usr/local/man:$MANPATH"

# Idioma
export LANG=pt_BR.UTF-8

# Editor preferido para sessões locais e remotas
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nano'
 else
   export EDITOR='vim'
 fi

# Defina aliases pessoais, substituindo aqueles fornecidos pelas bibliotecas oh-my-zsh,
# plugins e temas. Aliases podem ser colocados aqui, embora oh-my-zsh
# usuários são incentivados a definir aliases na pasta ZSH_CUSTOM.
# Para obter uma lista completa de aliases ativos, execute `alias`.

# Aliases
alias zshconfig="gnome-text-editor ~/.zshrc"
alias ohmyzsh="nautilus ~/.oh-my-zsh"

# Aliases Logo-ls
alias ils="logo-ls"
alias la="logo-ls -A"
alias ll="logo-ls -al"
# equivalentes com status do Git ativado por padrão
alias lsg="logo-ls -D"
alias lag="logo-ls -AD"
alias llg="logo-ls -alD"

# Aliases Exa
alias ls="exa --icons"

# Customizações adicionais
# Starship
# Starship install via "curl -sS https://starship.rs/install.sh | sh"

eval "$(starship init zsh)"


# $PATH Conda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/edius/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/edius/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/edius/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/edius/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# $PATH Rust 

export PATH="$HOME/.cargo/bin:$PATH"

source $HOME/.cargo/env

# $PATH

export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin$PATH

# $PATH oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# Tema Powerlevel9K
source  /usr/share/powerlevel9k/powerlevel9k.zsh-theme

# Ativador do Auto sugestão
# Veja os temas disponíveis em https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
