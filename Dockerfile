FROM x11vnc/desktop

RUN apt-get -y update && apt-get -y update

# prerequisites for dxx rebirth
 RUN apt-get install -y build-essential scons libsdl1.2-dev libsdl-image1.2-dev libsdl-mixer1.2-dev libphysfs-dev


WORKDIR /home/ubuntu
RUN mkdir .d1x-rebirth

COPY descent.pig .d1x-rebirth/
COPY descent.hog .d1x-rebirth/

COPY d1x-rebirth .

EXPOSE 42424
EXPOSE 6080
EXPOSE 5900








