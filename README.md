### Prepare

#### 1. Install homebrew

https://brew.sh/index_ja

#### 2. Install dependencies

```sh
# cli
brew install git gsed n vim jq peco ffmpeg

# cask
brew install \
  1password \
  alfred \
  alt-tab \
  discord \
  figma \
  google-chrome \
  hyper \
  karabiner-elements \
  keycastr \
  ngrok \
  slack \
  tableplus \
  visual-studio-code \
  --cask
```

#### 3. Install Powerline fonts (HackGen)

https://github.com/yuru7/HackGen

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
git config --global init.defaultbranch main
git config --global core.ignorecase false
git config --global core.autocrlf false
git config --global core.editor vim
git config --global color.ui true
git config --global pull.ff only
git config --global pull.rebase false
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

Finally, I tried to use `docker compose build` by factory reset docker but I got following error.

```
error getting credentials - err: docker-credential-osxkeychain resolves to executable in current directory (./docker-credential-osxkeychain), out: ``
```

I have not using Docker Desktop for Mac but default configuration applied using Mac key chain that was problem.

So, I need fix `~/.docker/config.json` to blank json like `{}`, and login Docker Hub,

```sh
docker login
# and enter username and password
```

And I can get raw Docker Hub credential like following to `~/.docker/config.json` .

```json
{
  "auths": {
    "https://index.docker.io/v1/": {
      "auth": "xxxxxxxxxx"
    }
  }
}
```

cf) https://github.com/docker/compose/issues/6517#issuecomment-471625374

Also I got following warning when login to docker hub

```
WARNING! Your password will be stored unencrypted in /Users/takuya/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credentials-store
```

If I have concern this warning, I can use `docker-credential=helpers` .
https://github.com/docker/docker-credential-helpers/releases

Finally (really), I tried to `docker compose build` and it works.
