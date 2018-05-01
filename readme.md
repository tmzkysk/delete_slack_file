# これはなに？
slackにアップされたファイルを一括で削除するスクリプト。
100件ずつファイルを削除する。

# 対応していないこと
- チャンネルを指定したファイルの削除
- 拡張子を指定したファイルの削除
- ファイルの削除件数を指定

# 手順
https://api.slack.com/apps/xxxxx/oauth? からslackのtokenを発行

<img width="1096" alt="2018-05-02 0 55 32" src="https://user-images.githubusercontent.com/12689907/39480699-f84637b8-4da3-11e8-9a8a-53cccf6751f1.png">

apiからfileの操作を許容する

<img width="758" alt="2018-05-02 0 56 04" src="https://user-images.githubusercontent.com/12689907/39480708-fdc97af6-4da3-11e8-851d-9d32e25efd0d.png">

環境変数に発行されたtokenをセットしておく
```sh
$ export SLACK_TOKEN='xxxxxxxxxxxxxxxxxxxxxxxx'
```