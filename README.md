# OPSC Debug Tools

OPSC Debug ToolsはOpen Platform for Smart Cityに蓄積されたコンテキストデータのデバッグに使用します。

## 使い方

### ダウンロードと初期設定

```bash
$ git clone https://github.com/oolorg/opsc-debug-tools.git
```

`env.sh` ファイルを開き、認証情報を入力します。

```
ORION_HOST=
ORION_PORT=443
FIWARE_SERVICE=
API_PROXY=
API_TOKEN=

# Tokenを自動取得する場合、以下を入力する。
ADMIN_ACCOUNT=
ADMIN_PASSWORD=
CLIENT_ID=
CLIENT_SECRET=
```

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

