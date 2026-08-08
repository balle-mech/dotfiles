## dotfiles リポジトリをローカルに反映させる手順

### 1. git clone

```bash
git clone https://github.com/balle-mech/dotfiles.git ~/src/github.com/balle-mech/dotfiles
cd ~/src/github.com/balle-mech/dotfiles
```

### 2. 既存の設定ファイルをバックアップ

```bash
# バックアップディレクトリを作成
mkdir -p ~/backup

# 既存の設定ファイルをバックアップ
mv ~/.bashrc ~/backup/bashrc.backup
mv ~/.gitconfig ~/backup/gitconfig.backup
mv ~/.config/fish/config.fish ~/backup/config.fish.backup

echo "Existing configs backed up to ~/backup/"
```

### 3. install-apps.sh を実行

```bash
bash install-apps.sh
```

Homebrew・各種パッケージ・GUIアプリのインストールが行われる。

### 4. install-vscode-extensions.sh を実行

```bash
bash install-vscode-extensions.sh
```

vscode-extensions.txt に記載された VSCode 拡張機能が一括インストールされる。

### 5. link.sh を実行

```bash
bash link.sh
```

各設定ファイルのシンボリックリンクが作成される。

役割ごとにスクリプトを分けている：

| スクリプト | 役割 |
|---|---|
| install-apps.sh | Homebrew・パッケージ・GUIアプリのインストール |
| install-vscode-extensions.sh | VSCode 拡張機能のインストール |
| link.sh | 設定ファイルのシンボリックリンク作成 |

### 6. シンボリックリンクを手動で作成する場合

> **Note**: link.sh にシンボリックリンク作成が組み込まれているため、link.sh を実行した場合は以下の作業は不要。

```bash
# dotfiles リポジトリのパスを設定（環境に合わせて変更）
set DOTFILES ~/src/github.com/balle-mech/dotfiles

# .bashrc のリンク
ln -sf $DOTFILES/.bashrc ~/.bashrc

# .gitconfig のリンク
ln -sf $DOTFILES/.gitconfig ~/.gitconfig

# fish config のリンク
mkdir -p ~/.config/fish
ln -sf $DOTFILES/.config/fish/config.fish ~/.config/fish/config.fish

# claude code
ln -sf $DOTFILES/.claude/settings.json ~/.claude/settings.json

# karabiner のリンク
mkdir -p ~/.config/karabiner
ln -sf $DOTFILES/.config/karabiner/karabiner.json ~/.config/karabiner/karabiner.json

# ghostty のリンク
mkdir -p ~/.config/ghostty
ln -sf $DOTFILES/.config/ghostty/config ~/.config/ghostty/config

# vscode のリンク
mkdir -p ~/Library/Application\ Support/Code/User
ln -sf "$DOTFILES/Library/Application Support/Code/User/settings.json" ~/Library/Application\ Support/Code/User/settings.json
ln -sf "$DOTFILES/Library/Application Support/Code/User/keybindings.json" ~/Library/Application\ Support/Code/User/keybindings.json
```

## 参考

- [dotfiles リポジトリ作成](https://qiita.com/yutkat/items/c6c7584d9795799ee164)
