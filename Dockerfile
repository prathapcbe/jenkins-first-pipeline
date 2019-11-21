FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install nginx
RUN apt-get -y install awscli
ADD index.html /var/www/html/index.nginx-debian.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]



#FROM python:3
#ENV BASE_DIR=/opt/nifi
#RUN pip install flask
#COPY practical1.py /
#EXPOSE 5000 
#CMD [ "python","./practical1.py" ]


#/usr/share/nginx/html.