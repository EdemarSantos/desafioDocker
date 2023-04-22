###
# Imagem Docker para compilação de código Go
FROM golang:alpine AS go_builder

# Não necessida de nenhum pacote.
# RUN apk update && apk add --no-cache <PACOTES>

# No diretório "/go/src",
# copie os arquivos deste diretório.
WORKDIR $GOPATH/src
COPY . .

# Resolve dependências necessárias (nenhuma no caso)
# e compila o Hello World
RUN go get -d -v
RUN go build -o /go/bin/hello


###
# Imagem Docker criada a partir da imagem anterior.
FROM scratch

# Contém unicamente o arquivo "hello" (compilado Go),
# que é executado ao rodar `docker run`.
COPY --from=go_builder /go/bin/hello /usr/local/hello
ENTRYPOINT ["/usr/local/hello"]
