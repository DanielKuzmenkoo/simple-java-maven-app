# Stage 1: Build the application!!!!
FROM maven:latest AS build
WORKDIR /app
COPY . .
RUN mvn clean package

# Stage 2: Run the application
FROM openjdk:11
WORKDIR /app
COPY --from=build /app/target/*.jar .
CMD ["java","-jar","/home/app/*.jar"]
# What?