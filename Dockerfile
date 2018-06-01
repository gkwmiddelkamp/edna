FROM python:2.7

MAINTAINER Gijs Middelkamp <gkwmiddelkamp@gmail.com>

ADD daemon/* /opt/edna/daemon/
ADD ntsvc/* /opt/edna/ntsvc/
ADD resources/* /opt/edna/resources/
ADD www/* /opt/edna/www/

ADD MP3Info.py /opt/edna/MP3Info.py
ADD edna.py /opt/edna/edna.py
ADD ezt.py /opt/edna/ezt.py
ADD id3reader.py /opt/edna/id3reader.py
ADD scheduler.py /opt/edna/scheduler.py
ADD edna.conf /opt/edna/edna.conf

EXPOSE 9090

CMD [ "/opt/edna/edna.py"]

