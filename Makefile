file:=-f docker-compose.yml -f docker-compose.build.yml

server.build.stop:
	docker compose ${file} stop
server.build.start:
	docker compose ${file} up -d
server.build.logs:
	docker compose ${file} logs