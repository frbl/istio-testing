FROM ubuntu:trusty
WORKDIR /app
ENV SINK null
ENV SOURCE null

RUN apt-get update && apt-get install -y curl && apt-get clean && rm -rf /var/lib/apt/lists

ADD src /app
CMD ["/bin/bash", "generate.sh"]

