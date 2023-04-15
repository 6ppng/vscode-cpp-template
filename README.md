# README
## 環境構築&コンテナ接続手順

1. 環境構築

    ```
    $ ./init_setup.sh 
    ```

    ```
    $ docker compose build
    ```


2. コンテナ起動(&停止)
    * 起動

        ```
        docker compose up -d
        ```

    * 停止

        ```
        docker compose down
        ```

3. コンテナに接続
    * VSCodeのDocker拡張機能(ms-azuretools.vscode-docker)を使って、VSCcodeウィンドウでコンテナにログイン

## コンパイル&デバッグ手順

1. コンテナのVSCodeサーバにC/C++拡張機能(ms-vscode.cpptools)を導入する。

2. ソースコードを開いてF5を押下するとコンパイルとデバッグが実行される。
    * または、ターミナルでg++, gdbを使用する。
