all:
	echo

build:
	docker build -t sbusso/base base
	docker build -t sbusso/ruby ruby
	docker build -t sbusso/prerails prerails
	docker build -t sbusso/postgresql postgresql

ps:
	docker ps

# supervisor:
# 	sudo `which supervisord` -n -c etc/supervisord.conf

# info:
# 	bin/nginx-info
