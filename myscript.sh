# Pull the latest node image from docker repository.
docker pull node
# Pull the latest mongo image from docker repository.
docker pull mongo
# Create a container out of the mongo image created, set the host to 192.168.99.100 and remove it when it's done.
docker run --rm --name alcdb -p 192.168.99.100:27017:27017 mongo &
# Build an image from the Dockerfile in the project.
docker build -t simdi/alcapp .
# Create a container out of the docker image created, set the host to 192.168.99.100 and remove it when it's done as well.
docker run --rm --name alcapp -p 192.168.99.100:3000:3000 simdi/alcapp

