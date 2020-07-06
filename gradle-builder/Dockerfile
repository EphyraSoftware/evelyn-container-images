FROM gradle:jdk14

COPY ["./ca.pem", "./ca-int.pem", "./import-certs.sh", "/tmp/"]

RUN /tmp/import-certs.sh && rm -rf /tmp/*
