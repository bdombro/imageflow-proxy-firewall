# Adapted from https://hub.docker.com/r/imazen/imageflow_server_unsecured
# REBUILD imageflow: You'll need to recompile from source and save the "artifacts" folder to ./imageflow-artifacts
# BUILD: `docker build -t imageflow .`
# RUN: `docker run -p 39876:39876 -e 'ARGS=--data-dir images --mount <your mount path> ...' imageflow`
# EXPORT: `docker image save imageflow > imageflow-dockerimage.tar`
# To import in plesk, there is a bug: https://talk.plesk.com/threads/docker-image.342229/
FROM imazen/imageflow_base_os
MAINTAINER Brian Dombrowski
COPY imageflow-artifacts/staging imageflow
RUN mkdir images
ENV ARGS --demo
EXPOSE 39876
CMD imageflow/imageflow_server start --bind-address 0.0.0.0 $ARGS
