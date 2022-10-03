### Prepare

#### 1. Install homebrew
https://brew.sh/index_ja

#### 2. Install dependencies
```sh
brew install git gsed nodeenv vim
brew install hyper --cask
```

#### 3. Install `zplug`
https://github.com/zplug/zplug

#### 4. Install `vim-plug`
https://github.com/junegunn/vim-plug

#### 5. Install vim color theme `monokai`
```sh
mkdir ~/.vim
cd ~/.vim
mkdir colors
git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors/
vi ~/.vimrc
```

#### 4. Deploy
```sh
cp /.* ./
# TODO: This command occurred `.git` directory copy
```

#### 5. Install `vim-plug` for vim
```sh
vim
# :PlugInstall
```
