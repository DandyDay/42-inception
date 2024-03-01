all: up

up:
	docker compose --file ./srcs/docker-compose.yaml up --build -d

down:
	docker compose --file ./srcs/docker-compose.yaml down

clean:
	make down
	docker volume rm -f volume_wp
	docker volume rm -f volume_db

re:
	make clean
	make up
