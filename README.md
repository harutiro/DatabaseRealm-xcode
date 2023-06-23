# DatabaseRealm-xcode

このレポジトリは、Qiitaの記事に書いた「iOSでCuckooを用いて単体テストを行う方法」のテストアプリケーションです。

メモ帳にtitleとcontentを保存して、Listに表示するアプリケーション。
CRUDのCとRは実装するが、UとDは今回は省略する。

# ファイル構成
今回はMVVMの構成に従って、Model、View、ViewModelと階層を分けて実装を行なった。

![image](https://github.com/harutiro/DatabaseRealm-xcode/assets/74090756/4fc14692-8b03-41fa-ab6b-42be0b03303f)

- View
    - ViewController
        - 見た目を整形する部分
- ViewModel
    - MainViewModel
        - MainViewModelの抽象クラス
    - MainViewModelImpl
        - DBに渡すデータを整形したり、呼び出した後のデータを保存しておくクラス
- Model
    - Memo
        - DBに保存するデータクラス
    - MemoRepository
        - MemoRepositoryの抽象クラス
    - MemoRepositoryImpl
        - DBと接続するようのクラス

# テストを行う内容
- MainViewModelのloadData()メソッドを呼び出した時に、正しくデータを呼び出すことができるか
- MainViewModelのcreate()メソッドを呼び出した時に、正しくデータをMemoRepositoryに送ることができるか？
    - フォームに書き込むデータが足らない時にエラーを表示させることができるかどうか？
