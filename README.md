# Ruby on Rails Dockerfiles

Using Vagrant and Docker shell

```
brew cask install virtualbox

brew install docker

git clone https://github.com/coreos/coreos-vagrant/

cd coreos-vagrant

export DOCKER_HOST=tcp://localhost:2375

mv user-data.sample user-data # edit file

# config.rb -> uncomment $expose_docker_tcp=2375

# share folder -> config.vm.synced_folder "/Users/sbusso/workspaces/docker/dockerfiles", "/home/core/docker", id: "docker", :nfs => true, :mount_options => ['nolock,vers=3,udp']

vagrant up # provision

sudo gem install bundler fig2coreos

fig run web rails new . --git option and a --database=postgresql --skip-gemfile -q -B

```

```
# https://github.com/noplay/docker-osx
curl https://raw.githubusercontent.com/noplay/docker-osx/HEAD/docker-osx > /usr/local/bin/docker-osx
chmod +x /usr/local/bin/docker-osx
```

see also this small tool https://github.com/rimusz/coreos-osx-gui

full details about vagrant / coreos: https://coreos.com/docs/running-coreos/platforms/vagrant/
