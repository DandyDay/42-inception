all: up

up:
	@mkdir -p /home/jinhchoi/data/db
	@mkdir -p /home/jinhchoi/data/wp
	docker-compose --file ./srcs/docker-compose.yaml up --build -d

down:
	docker-compose --file ./srcs/docker-compose.yaml down

clean:
	@make down
	@docker image rm -f mariadb
	@docker image rm -f nginx
	@docker image rm -f wordpress
	@docker volume rm -f volume_wp
	@docker volume rm -f volume_db
	@rm -rf /home/jinhchoi/data/db
	@rm -rf /home/jinhchoi/data/wp
	@mkdir -p /home/jinhchoi/data/db
	@mkdir -p /home/jinhchoi/data/wp

re:
	make clean
	make up
