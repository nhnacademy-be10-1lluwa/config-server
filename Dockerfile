FROM openjdk:21-jdk-slim

# 작업 디렉토리 설정
WORKDIR /app
COPY target/1lluwa-config-server.jar /app/config-server.jar
COPY application.yml /app/application.yml

EXPOSE 10319

# 환경변수로 깃허브 자격증명 전달받기
ENV GIT_USERNAME=""
ENV GIT_PASSWORD=""

ENTRYPOINT ["java", "-jar", "/app/config-server.jar", "--spring.config.location=file:/app/application.yml"]
