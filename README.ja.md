# suppress_redirection_to_cursor

'code'コマンドによる'Cursor'へのリダイレクトを防ぐ

## 概要

Cursorエディターはとても便利ですが、たまにVS Codeに帰りたくなるときもあります。
しかし、CursorとVS Codeの両方をインストールしている場合、パスの優先順位の関係で、`code`コマンドで開いた際に、`Cursor`エディターにリダイレクトされてしまうことがあります。
このシェル群は、そのリダイレクトを抑制します。

## 仕組み

内容は至ってシンプルです。
Cursorが持つ`code`コマンドに対応するファイル名を`_code`と変えることで、リダイレクトを抑制します。

この'code'コマンドのインストール先は環境により下記の通りです。。

### Windowsでのインストール先

- `%USERPROFILE%\AppData\Local\Programs\cursor\resources\app\bin\code.cmd`

### Windowsでのインストール先(WSLからのリダイレクト用のファイル)

- `%USERPROFILE%\AppData\Local\Programs\cursor\resources\app\bin\code`
- `mnt/c/Users/ユーザー名/AppData/Local/Programs/cursor/resources/app/bin/code`

### macOS

HomeBrewでインストールした場合はこの問題は発生しません。
下記にそれぞれインストールされ、競合しないためです。
    - `/opt/homebrew/bin/code`
    - `/opt/homebrew/bin/cursor`
