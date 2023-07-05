FROM maven:latest as build
WORKDIR /app
COPY . .
RUN mvn clean package

FROM openjdk:11
COPY --from=builder /app/Calculator-1.0-SNAPSHOT.jar /home/ubuntu/Calculator-1.0-SNAPSHOT.jar
CMD ["java","-jar","/home/ubuntu/Calculator-1.0-SNAPSHOT.jar"]
