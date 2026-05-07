FROM maven:3.9.10-eclipse-temurin-17@sha256:3f87b585f681619f5b27373461123425a095101ef0929d2cf15ad1888aeed7ff AS builder

WORKDIR /build

COPY internal/test/integration/components/javaamqp/pom.xml /build/pom.xml
COPY internal/test/integration/components/javaamqp/src /build/src

RUN mvn -B --no-transfer-progress -DskipTests package

FROM eclipse-temurin:25.0.3_9-jre@sha256:5742cdb98ef117621ad75f57475ab127db04f344d9c523307cc60b9955bdd676

WORKDIR /app
EXPOSE 8080

COPY --from=builder /build/target/javaamqp.jar /app/javaamqp.jar

ENTRYPOINT ["java", "-Djava.net.preferIPv4Stack=true", "-jar", "/app/javaamqp.jar"]
