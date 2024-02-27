all: up

up:
	docker compose --file ./srcs/docker-compose.yaml up --build -d

down:
	docker compose --file ./srcs/docker-compose.yaml down

re:
	make down
	make up
