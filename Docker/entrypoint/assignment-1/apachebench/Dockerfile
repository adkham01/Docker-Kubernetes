FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y apache2-utils && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["ab"]

CMD ["-n", "100", "-c", "10", "https://udemy.com/"]