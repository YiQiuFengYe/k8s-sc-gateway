FROM openjdk:8-jdk-alpine

ADD run.sh /

ENV JAVA_OPTS=""
ENV CONFIG_PROFILE="default"
ENV DIY_EUREKA_SERVER_PORT="8761"
ENV DIY_EUREKA_USER="smile"
ENV DIY_EUREKA_PASSWORD="smilelxy"
ENV DIY_EUREKA_HOST_MASTER="eureka-master.dev.svc.cluster.local"
ENV DIY_EUREKA_HOST_BACKUP01="eureka-backup01.dev.svc.cluster.local"
ENV DIY_EUREKA_HOST_BACKUP02="eureka-backup02.dev.svc.cluster.local"
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV TZ=Asia/Shanghai

RUN mkdir /app
RUN chmod +x /run.sh

WORKDIR /app

COPY target/k8s-sc-gateway*.jar /app/k8s-sc-gateway.jar

EXPOSE 8080
EXPOSE 5007

ENTRYPOINT [ "sh", "-c", "/run.sh" ]