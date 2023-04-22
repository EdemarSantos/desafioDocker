

### Desafio Docker 

Conforme o Desafio Docker da Full Cycle Learning Experience 2023

https://fcexperience.fullcycle.com.br/desafio/fcls-desafio/desafio-docker

Foram criados os arquivos:

- main.go
- go.mod
- Dockerfile

E feito o build da imagem:

`$ docker build -t fullcycle .`


Ao rodar a mesma, sucesso:
```sh
$ docker run fullcycle
Hello, World!

```

O repositório foi publicado em
https://hub.docker.com/r/edemarsantos/fullcycle
com os comandos:
```sh
$ cat /tmp/mypassword | docker login --username edemarsantos --password-stdin
$ docker tag fullcycle edemarsantos/fullcycle
$ docker push edemarsantos/fullcycle
```

O mesmo foi mudado para Público em
https://hub.docker.com/repository/docker/edemarsantos/fullcycle/settings

Assim, qualquer um pode baixar e executar a imagem com o comando

```sh
$ docker run edemarsantos/fullcycle
Hello, World!

```