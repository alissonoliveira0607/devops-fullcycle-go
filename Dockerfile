FROM golang:1.20-alpine AS builder

WORKDIR /app

# Desabilita os módulos Go
ENV GO111MODULE=off

COPY . .

# Construindo o binario da aplicação
RUN go build -o main .

# Criando a imagem final mínima baseado em alpine
FROM alpine:latest

# Defininindo o diretório de trabalho para o container final
WORKDIR /app/

# Copia o binário gerado da fase de build
COPY --from=builder /app/main .

CMD ["./main"]

