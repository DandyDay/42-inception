all: up

up:
	mkdir -p /Users/jinho/data/db
	mkdir -p /Users/jinho/data/wp
	docker compose --file ./srcs/docker-compose.yaml up --build -d

down:
	docker compose --file ./srcs/docker-compose.yaml down

clean:
	make down
	docker image rm -f mariadb
	docker image rm -f nginx
	docker image rm -f wordpress
	docker volume rm -f volume_wp
	docker volume rm -f volume_db
	rm -rf /Users/jinho/data/db
	rm -rf /Users/jinho/data/wp
	mkdir -p /Users/jinho/data/db
	mkdir -p /Users/jinho/data/wp

re:
	make clean
	make up
