## 手順

git clone後の設定

1. 使っているシェルの設定(~/.bashrc)をdotfiles以下にコピーする
2. 元の~/.bashrcを退避させる mkdir backup && mv ~/.bashrc backup
3. dotfilesの.bashrcにシンボリックリンクを貼る ln -s ~/dotfiles/.bashrc ~
4. dotfiles以下でコミットしてpush

## 参考
[dotfilesリポジトリ作成](https://qiita.com/yutkat/items/c6c7584d9795799ee164)
