FROM openjdk:21

ARG JAR_FILE=target/calculator.jar

WORKDIR /opt/app

COPY ${JAR_FILE} calculator.jar

COPY entrypoint.sh entrypoint.sh

RUN chmod 755 entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]