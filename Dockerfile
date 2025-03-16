# Base Image with OpenJDK17 and Maven
FROM maven:3.8.5-openjdk-17

# coping the required application files
COPY . .

# building the spring boot app
RUN mvn clean install

# running the spring boot app
# setting initial heap size of this spring app as 512MB and max-heap size as 1GB
CMD ["java", "-Xms512m", "-Xmx1G", "-jar", "./target/Spring_Boot_JPA-0.0.1-SNAPSHOT.jar"]

