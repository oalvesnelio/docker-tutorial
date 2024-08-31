docker-up:
	docker-compose up -d
.PHONY: docker-up

docker-down:
	docker-compose down
.PHONY: docker-down

docker-build:
	docker-compose build
.PHONY: docker-build

docker-restart:
	docker-compose restart
.PHONY: docker-restart

docker-logs:
	docker-compose logs -f $(if $(service), $(service))
.PHONY: docker-logs

docker-list:
	docker-compose ps
.PHONY: docker-ps

# executar o docker exec com existencia de serviço especifico e caso não exista executar o php.
docker-bash:
	docker-compose exec $(if $(service), $(service), bash)
.PHONY: docker-bash

docker-exec:
	docker-compose exec $(if $(service), $(service), php) $(if $(cmd), $(cmd), bash)
.PHONY: docker-exec