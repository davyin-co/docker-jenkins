FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y ansible
RUN echo "Asia/Shanghai" > /etc/timezone && rm /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

USER jenkins
