### Prepare

#### 1. Install homebrew
https://brew.sh/index_ja

#### 2. Install dependencies
```sh
brew install git gsed nodenv vim jq peco
brew install hyper alfred slack google-chrome visual-studio-code karabiner-elements figma 1password --cask
```

#### 3. Install Powerline fonts
https://github.com/powerline/fonts

#### 4. Install `zplug`
https://github.com/zplug/zplug

#### 5. Install `vim-plug`
https://github.com/junegunn/vim-plug

#### 6. Install vim color theme `monokai`
```sh
mkdir ~/.vim
cd ~/.vim
mkdir colors
git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors/
vi ~/.vimrc
```

#### 7. Deploy
```sh
cp /.* ./
# TODO: This command occurred `.git` directory copy
```

#### 8. Install `vim-plug` for vim
```sh
vim
# :PlugInstall
```

#### 9. Configure git
```sh
git config --global user.name "Takuya Eguchi"
git config --global user.email "seal2501@gmail.com"
git config --global init.defaultbranch=main
git config --global core.ignorecase false
```

#### 10. (Optional) Install Docker compose

When I doing commercial development project, I have to use any other docker desktop like lima.

So maybe I install docker from Homebrew, but it does not bundle docker compose, I need to install docker compose manually.

https://github.com/docker/compose/tree/v2/#where-to-get-docker-compose

> Docker Compose is included in Docker Desktop for Windows and macOS.

No I can't :(

```sh
# Apple Silicon
curl \
-SL https://github.com/docker/compose/releases/latest/download/docker-compose-darwin-aarch64 \
-o ~/.docker/cli-plugins/docker-compose

chmod +x ~/.docker/cli-plugins/docker-compose

docker compose version
# => Docker Compose version v2.xx.x
```
