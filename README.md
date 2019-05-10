# OPSC Debug Tools

OPSC Debug ToolsはOpen Platform for Smart Cityに蓄積されたコンテキストデータのデバッグに使用します。

## 使い方

### ダウンロードと初期設定

```bash
$ git clone https://github.com/oolorg/opsc-debug-tools.git
```

`env.sh` ファイルを開き、認証情報を入力します。

### スクリプトの実行

- コンテキストデータの登録

```bash
$ ./orion_createContext.sh
```

- コンテキストデータの更新

```bash
$ ./orion_updateContext.sh
```

- サブスクリプションの登録

```bash
$ ./orion_subscribeContext.sh
```

