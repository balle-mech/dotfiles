---
name: add-dotfile
description: 設定ファイルをdotfilesリポジトリで管理できるようにする。「〇〇をdotfilesで管理して」「〇〇の設定ファイルをシンボリックリンクにして」のような依頼で自動的に呼び出す。
allowed-tools: Read, Bash, Edit, Glob
---

指定された設定ファイルをこの dotfiles リポジトリで管理できるよう、以下の手順を実行する。

## 手順

### 1. 引数の確認

ユーザーの入力からファイルパスを取得する（例: `~/.config/starship.toml`）。
ファイルが存在しない場合はエラーを伝えて終了する。

### 2. dotfiles リポジトリのパスを確認

`install.sh` を読んで `DOTFILES_DIR` の設定パターンを確認する。
dotfiles リポジトリの絶対パスは `git rev-parse --show-toplevel` で取得する。

### 3. 配置先を決める

元ファイルのパスからホームディレクトリ部分を除いた相対パスを、dotfiles リポジトリ内の同じ構造に配置する。

例：
- `~/.gitconfig` → `<DOTFILES>/.gitconfig`
- `~/.config/fish/config.fish` → `<DOTFILES>/.config/fish/config.fish`

### 4. 事前チェック

- 元のファイルが既にシンボリックリンクの場合 → その旨を伝えてスキップ
- dotfiles 内に同名ファイルが既にある場合 → 上書きするか確認する
- 機密情報が疑われるファイル名（`.env`, `*credentials*`, `*secret*`, `*token*`）→ 警告を出してから確認を取る

### 5. ファイルをコピーしてシンボリックリンクを作成

```bash
mkdir -p <配置先ディレクトリ>
cp <元のファイルパス> <dotfiles内の配置先>
ln -sf <dotfiles内の絶対パス> <元のファイルパス>
ls -la <元のファイルパス>  # 確認
```

### 6. install.sh を更新

`install.sh` を読んで既存エントリのパターンを参考に追記する。

```bash
# <ファイルの説明>
mkdir -p <必要なディレクトリ（あれば）>
ln -sf "$DOTFILES_DIR/<相対パス>" ~/<相対パス>
```

### 7. README.md を更新

「シンボリックリンクを作成」セクションに同じ形式で追記する。

### 8. 完了報告

- コピーしたファイル
- 作成したシンボリックリンク
- 更新したファイル（install.sh, README.md）
- `git add` すべきファイルの一覧
