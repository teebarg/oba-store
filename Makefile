.PHONY: up down build

up:
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose build

logs:
	docker-compose logs -f

restart:
	docker-compose down && docker-compose up -d

# test:
#     docker-compose run --rm backend npm test
#     docker-compose run --rm frontend npm test