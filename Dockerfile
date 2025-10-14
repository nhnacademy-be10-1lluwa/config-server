FROM eclipse-temurin:21-jdk

# 작업 디렉토리 설정
WORKDIR /app
ARG JAR_FILE=./target/1lluwa-config-server.jar
COPY ${JAR_FILE} /app/1lluwa-config-server.jar

EXPOSE 10319

# 환경변수로 깃허브 자격증명 전달받기
ENV GIT_USERNAME=""
ENV GIT_PASSWORD=""

ENTRYPOINT ["java", "-jar", "/app/config-server.jar"]
