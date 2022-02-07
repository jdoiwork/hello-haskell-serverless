# FROM public.ecr.aws/lambda/nodejs:12
FROM amazonlinux:2

SHELL ["/bin/bash", "-c"]

RUN yum update -y \
    && curl -fsSL https://rpm.nodesource.com/setup_17.x | bash - \
    && yum install -y \
        which \
        tar \
        gzip \
        gcc \
        gmp-devel.x86_64 \
        zlib-devel.x86_64 \
        make \
        xz \
        nodejs


RUN curl -sSL https://get.haskellstack.org/ | sh
ENV STACK_ROOT=/stack_root
RUN stack setup

# amazon-linux-extras install docker

