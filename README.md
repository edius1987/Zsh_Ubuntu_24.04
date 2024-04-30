# Zsh no Ubuntu 24.04


[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg)](/LICENSE)


Este é apenas um esboço de configuração para zsh no ubuntu, tem várias formas de fazer muitas várias podem ser alteradas, mas neste tentei ser mais simples e eficiente.

Abaixo está apenas anotações de como foi feito podendo ser alterado e modificado de muitas outras formas olhem a documentação para adquiri mais conhecimento.


**Atualize o cache do APT**: Primeiro, atualize o cache do gerenciador de pacotes APT com o seguinte comando:

```bash
sudo apt update
```

**Instale o Zsh**: Agora, instale o Zsh e alguns outros aplicativos usando o APT:

```bash
sudo apt install zsh curl git zsh-themes-powerlevel9k fzf fonts-powerline zsh-autosuggestions zsh-syntax-highlighting
```

## Instale Oh-my-Zsh

Para mais customizações instale o Oh-my-zsh
Siga o seguinte comando

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Instale o Starship

Para deixar o Shell mais rápido instale o Starship

```bash
curl -sS https://starship.rs/install.sh | sh
```

Configure o Starship 🚀

### Configuração[​](https://starship.rs/config/#configuration)

Para começar a configurar o Starship, crie o seguinte arquivo: `~/.config/starship.toml`.



```bash
mkdir -p ~/.config && touch ~/.config/starship.toml
```

Toda a configuração do Starship é feita neste arquivo [TOML :](https://github.com/toml-lang/toml)

Abra o arquivo com o editor favorito no caso o `nano ~/.config/starship.toml` e cole o texto abaixo.

```Tom
# Get editor completions based on the config schema
"$schema" = 'https://starship.rs/config-schema.json'

# Inserts a blank line between shell prompts
add_newline = true

# Replace the '❯' symbol in the prompt with '➜'
[character] # The name of the module we are configuring is 'character'
success_symbol = '[➜](bold green)' # The 'success_symbol' segment is being set to '➜' with the color 'bold green'

# Disable the package module, hiding it from the prompt completely
[package]
disabled = true
```

## Powerlevel9k

Ativação do tema Powerlevel9k

1. ```bash
   echo 'source /usr/share/powerlevel9k/powerlevel9k.zsh-theme' >> ~/.zshrc
   ```

## Instalação do Logo-ls

É um ls mais bonito e moderno com integração ao Git.

Tem várias formas de instalar o logo-ls o mais fácil é via pacote .deb via wget

```bash
wget https://github.com/Yash-Handa/logo-ls/releases/download/v1.3.7/logo-ls_amd64.deb
```

E instalar via 

```bash
sudo apt install ./logo-ls_amd64.deb
```

Se houver alguma dependência o `apt` irá baixar é instalar



## Instalação do EXA

Temos também a opção do Exa também é bonito e moderno, cá entre nós eu prefiro o exa, para instalar é mais complicado. Pois não conta com .deb compilado mais podemos baixar o binário é instalar em `$HOME/bin` ou em `/usr/local/bin`.

 Baixe do site ou do Github

```bash
wget https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip
```

Descompacte

```bash
unzip exa-linux-x86_64-v0.10.1
```

```bash
cd exa-linux-x86_64-v0.10.1
```

```bash
#!/bin/bash

# Mover o arquivo exa para /usr/local/bin
mv /caminho/do/exa /usr/local/bin/

# Mover os arquivos exa.bash para /etc/bash_completion.d
mv /caminho/do/exa.bash /etc/bash_completion.d/

# Mover o arquivo exa.zsh para /usr/local/share/zsh/site-functions
mv /caminho/do/exa.zsh /usr/local/share/zsh/site-functions/

# Mover o arquivo exa.fish para /usr/share/fish/vendor_completions.d
mv /caminho/do/exa.fish /usr/share/fish/vendor_completions.d/

# Definir as permissões corretas para os arquivos
chmod +x /usr/local/bin/exa
chmod +x /etc/bash_completion.d/exa.bash
chmod +x /usr/local/share/zsh/site-functions/exa.zsh
chmod +x /usr/share/fish/vendor_completions.d/exa.fish
```


>  Outra forma de instalar  é via o Cargo do Rust pelo comando:
> 
> `cargo install exa`
> 
> Cargo irá construir o binário exa e colocá-lo no diretório` $HOME/.cargo`, que você deverá colocar em seu $PATH. Este local pode ser substituído passando a opção --root para Cargo.
> 
> `sudo cargo install exa --root /usr/local/bin/`
> 
> Parece mais fácil e é mais fácil, mas é extremamente periogoso no ponto de vista da segurança.   


# Documentação e material para pesquisa

[**Starship**](https://github.com/starship/starship)

[**Oh-my-zsh**](https://github.com/ohmyzsh/ohmyzsh)

[**Logo-ls**](https://github.com/Yash-Handa/logo-ls)

[**Exa**](https://github.com/ogham/exa)