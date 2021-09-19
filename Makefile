up:
	docker-compose up -d
stop:
	docker-compose stop
ps:
	docker-compose ps
build:
	docker-compose build
application:
	docker-compose exec application bash
database:
	docker-compose exec database bash
web:
	docker-compose exec web ash
sql:
	docker-compose exec database bash -c 'mysql --user=$$MYSQL_USER --password=$$MYSQL_PASSWORD --database=$$MYSQL_DATABASE'
