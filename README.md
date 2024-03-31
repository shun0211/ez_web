# 説明

## 環境

Ruby : 3.2.2<br>
Rails : 7.1.2<br>
MYSQL : 5.7<br>

## 環境構築
### MySQL インストール

```
brew install mysql
brew services start mysql
```

### ローカル環境立ち上げ
```bash
git clone https://github.com/shun0211/ez_web.git
```

master.keyをもらい、configディレクトリ以下にセット
```bash
rails db:create db:migrate db:seed
bin/dev
```
