#!/bin/bash

<<task
deploy a gjango app
and handle the code for errors
task


code_clone(){
	echo "cloning the django app--"
	git clone git ssh
}

install_requirements(){
	echo"Installing dependencies"
	sudo apt-get install docker.io nginx -y docker compose

}
requirred_restarts(){
	suod chmode $USER /var/run/docker.sock
	#sudo systemctl enable docker
	#sudo systemctl enable nginx
	#sudo systemctl restart docker


}
deploy(){
	docker build -t notes-app .
	#docker run -d -p 8000:8000 notes-app:latest
	docker-compose up -d
}

echo "deployment started"

if ! code_clone;then
	echo "the code directory already exists"
	cd django-notes-app
fi

if ! install_requirements; then
	echo"if there will be problem"
	exit 1
fi

if ! requirred_restarts; then
	echo"fail in the restarts"
	exit 1
fi

if ! deploy;then
	echo "there is problem in the in deployment"
	exit 1
fi
 
echo "deployment finished"


