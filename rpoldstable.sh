PS1="(rpbuilder-oldstable) $PS1"

function run() {
  xhost +
  docker run -it --rm \
    -v $HOME/RedPanda-CPP:/redpanda-src \
    -v /redpanda-build:/rpbuild \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    rpbuilder-oldstable
}

function up() {
  docker pull debian:10
  cd rpbuilder-dockerfile
  ./build.sh oldstable
  docker rmi $( docker images | grep '^<none>' | awk '{ print $3 }' )
}
