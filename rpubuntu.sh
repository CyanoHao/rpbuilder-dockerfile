function run() {
  xhost +
  docker run -it --rm \
    -v $HOME/RedPanda-CPP:/redpanda-src \
    -v /redpanda-build:/rpbuild \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    rpbuilder-ubuntu
}

function up() {
  docker pull ubuntu:20.04
  cd rpbuilder-dockerfile
  ./build.sh ubuntu
  docker rmi $( docker images | grep '^<none>' | awk '{ print $3 }' )
}
