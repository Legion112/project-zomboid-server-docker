file:=-f docker-compose.yml -f docker-compose.build.yml

server.build.stop:
	docker compose ${file} stop
server.build.start:
	docker compose ${file} up -d
server.build.logs:
	docker compose ${file} logs -f
server.data.download:
	scp -r root@${host}:/root/pzmy/data .
	scp -r root@${host}:/root/pzmy/workshop-mods .
server.data.upload:
	scp -r ./data root@${host}:/root/pzmy/
	scp -r ./workshop-mods root@${host}:/root/pzmy/