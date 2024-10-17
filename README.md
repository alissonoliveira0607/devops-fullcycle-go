# Go Application - Full Cycle Rocks!

Este repositório contém uma aplicação simples em Go que imprime "Full Cycle Rocks!!" baseado no desafio proposto pela Full Cycle. A aplicação é construída e executada dentro de containers e o processo de build e execução foi abstraído usando um `Makefile`.

## Estrutura do Projeto

- `Dockerfile`: Define as etapas de build e execução da aplicação
- `Makefile`: Abstrai os comandos Docker para facilitar o build e a execução da aplicação
- `main.go`: O código Go da aplicação, que simplesmente imprime uma mensagem no console conforme o desafio proposto

## Pré-requisitos

Certifique-se de ter os seguintes itens instalados em seu sistema:

- [Docker](https://www.docker.com/get-started)
- [Make](https://www.gnu.org/software/make/)

## Como Usar

### Build da Aplicação

O processo de build é realizado dentro de um container Docker, utilizando um `Dockerfile` multi-stage. Para construir a aplicação, basta rodar o seguinte comando:

```bash
make build
```

```bash
make run
```

### Caso não queira utilizar o Make se baseie no conteúdo / comandos dentro dele para buildar e executar a aplicação.

## Link da imagem no registry do Dockerhub
- [Imagem](https://hub.docker.com/repository/docker/aoliveirasilva/fullcycle/general)

### Para realizar o download da imagem execute:

```bash
docker push aoliveirasilva/fullcycle:latest
```



