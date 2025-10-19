# Pull the baseimage.
FROM jlesage/baseimage-gui:debian-12-v4

# Install xterm.
RUN apt-get -y update && \
apt-get -y upgrade && \
apt-get -y install tcl tk tcl-tls libsqlite3-tcl tcllib

COPY ratioghost/ /ratioghost

# Copy the start script.
COPY startapp.sh /startapp.sh

EXPOSE 3773

# Set the application name.
RUN set-cont-env APP_NAME "Ratioghost"