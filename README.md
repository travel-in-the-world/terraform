## 環境構築

- ローカル作業環境

```shell
$ cd ./docker

$ docker compose up -d

$ docker compose exec terraform-github ash

# cd services/github

# export AWS_ACCESS_KEY_ID=<AWSのアクセスキー>

# export AWS_SECRET_ACCESS_KEY=<AWSのシークレットキー>

# terraform init

# terraform validate

$ docker-compose down --rmi all --volumes --remove-orphans
```

## 環境変数

- Organizationに登録している環境変数

|環境変数|値|
|:--:|:--:|
|GITHUB_APP_ID||
|GITHUB_INSTALLATION_ID||
|PRIVATE_KEY||
|ACCESS_KEY||
|SECRET_KEY||
