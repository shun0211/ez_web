server_start:
	docker-compose run --rm --service-ports ez_web

bin_dev:
	docker-compose run --rm ez_web bin/dev

database_reset:
	docker-compose run --rm ez_web bundle exec rake db:drop db:create db:migrate db:seed