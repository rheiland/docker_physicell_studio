# docker_physicell_studio

Testing on a Mac:
```
docker build -t physicell-studio .
IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost +
docker run --rm -it  -v /tmp/.X11-unix:/tmp/.X11-unix  -e DISPLAY=$IP:0 physicell-studio python3 /tmp/bin/studio.py -c /tmp/config/PhysiCell_settings.xml
```

And it also seems to run/display on Ubuntu, so long as you know the magic set of args (maybe I also did the "xhost +":
```
heiland@heiland-asus:~/git/docker_physicell_studio$ sudo docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY physicell-studio python3 /tmp/bin/studio.py -c /tmp/config/PhysiCell_settings.xml
```
