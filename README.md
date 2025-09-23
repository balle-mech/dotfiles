## dotfiles リポジトリをローカルに反映させる手順

### 1. git clone

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

### 3. シンボリックリンクを作成

```bash
# .bashrc のリンク
ln -sf ~/dotfiles/.bashrc ~/.bashrc

# .gitconfig のリンク
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# fish config のリンク
mkdir -p ~/.config/fish
ln -sf ~/dotfiles/config.fish ~/.config/fish/config.fish
```

4. dotfiles 以下でコミットして push

## 参考

[dotfiles リポジトリ作成](https://qiita.com/yutkat/items/c6c7584d9795799ee164)
