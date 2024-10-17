FROM golang:1.20-alpine AS builder

WORKDIR /app
# Desabilita os módulos do Go
ENV GO111MODULE=off

COPY main.go .

# Compilando o binário do Go de forma estática
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o main .

# Etapa 2: Criar a imagem final mínima
FROM scratch

# Copia o binário gerado da fase de build
COPY --from=builder /app/main /main

CMD ["/main"]

