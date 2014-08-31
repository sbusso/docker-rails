require 'docker'

Docker.url = 'tcp://192.168.59.103:2375'

p Docker::Image.all