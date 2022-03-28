#Dockerfile

FROM openjdk:11-jre-stretch

WORKDIR /

EXPOSE 9002

COPY dist/swim-transit-3.11.0 /app/swim-transit-3.11.0/
COPY dist/swim-transit-3.11.0/ui/ /app/swim-transit-3.11.0/ui

WORKDIR /app/swim-transit-3.11.0/bin
ENTRYPOINT ["./swim-transit"]
