#FROM maven:3.5-openjdk-11 AS build
#COPY src /usr/src/app/src
##COPY settings.xml /usr/src/app
#COPY pom.xml /usr/src/app
#RUN mvn -f /usr/src/app/pom.xml clean package
#
#FROM openjdk:11
#COPY --from=build /usr/src/app/target/student-microservice-jenkins-*.jar /usr/app/app.jar
#EXPOSE 8080
#ENTRYPOINT ["java", "-jar","/usr/app/app.jar"]


#FROM openjdk:11 AS build
#RUN mkdir -p /app/source
#COPY . /app/source
#WORKDIR /app/source
#RUN ./mvn clean package
#
#FROM openjdk:11
#COPY --from=build /app/source/target/student-microservice-jenkins-*.jar /app/app.jar
#EXPOSE 8080
#ENTRYPOINT ["java", "-jar","/app/app.jar"]


FROM openjdk:11
ADD target/student-microservice-jenkins-*.jar student-microservice-jenkins.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar","-Xms256m","-Xmx2048m","/student-microservice-jenkins.jar"]



#FROM openjdk-11 AS build
#ADD ./pom.xml pom.xml
#ADD ./src src/
#RUN mvn clean package
#
#FROM openjdk:11
#COPY --from=build /target/student-microservice-jenkins-*.jar app.jar
#EXPOSE 8080
#ENTRYPOINT ["java", "-jar","app.jar"]

