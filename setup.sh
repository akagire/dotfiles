#!/bin/bash

# 配置先ディレクトリを定義
KARABINER_CONFIG_DIR="$HOME/.config/karabiner"
ZSHRC_DEST="$HOME/.zshrc"
ZPROFILE_DEST="$HOME/.zprofile"
VIMRC_DEST="$HOME/.vimrc"
HYPERJS_DEST="$HOME/.hyper.js"

# 必要なディレクトリを作成
mkdir -p "$KARABINER_CONFIG_DIR"

# ファイルを適切な場所にコピー（既存の場合はスキップ）
copy_if_not_exists() {
  local src=$1
  local dest=$2
  if [ -e "$dest" ]; then
    echo "スキップ: $dest は既に存在します。"
  else
    cp "$src" "$dest"
    echo "コピー: $src を $dest にコピーしました。"
  fi
}

copy_if_not_exists "karabiner.json" "$KARABINER_CONFIG_DIR/karabiner.json"
copy_if_not_exists ".zshrc" "$ZSHRC_DEST"
copy_if_not_exists ".zprofile" "$ZPROFILE_DEST"
copy_if_not_exists ".vimrc" "$VIMRC_DEST"
copy_if_not_exists ".hyper.js" "$HYPERJS_DEST"

echo "設定ファイルの配布が完了しました。"
