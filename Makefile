build:
	@docker build -t aoliveirasilva/fullcycle:latest .

run:
	@docker run --rm --name go-fullcycle aoliveirasilva/fullcycle:latest

.PHONY: build run
