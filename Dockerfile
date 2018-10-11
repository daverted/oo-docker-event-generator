####################################
#   Multi-stage build
#       1. build generator
#       2. build agent
####################################

# Stage 1 - Build Generator

FROM maven:3.5 as generator-builder

RUN git clone https://github.com/overops-samples/overops-event-generator.git /opt/overops-event-generator

RUN cd /opt/overops-event-generator \
    && mvn clean package -DskipTests=true


# Stage 2 - Build Agent

FROM timveil/oo-docker-base:alpine-musl

LABEL maintainer="tjveil@gmail.com"

COPY --from=generator-builder /opt/overops-event-generator/target/overops-event-generator-*.jar .

# port for generator UI
EXPOSE 8080

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]