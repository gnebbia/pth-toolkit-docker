FROM python:2
RUN apt-get update && \
    apt-get install git libpopt-dev libreadline-dev && \
    git clone https://github.com/byt3bl33d3r/pth-toolkit && \
    ln -sf /lib/x86_64-linux-gnu/libreadline.so.7.0 \
           /lib/x86_64-linux-gnu/libreadline.so.6
ENV PATH="/pth-toolkit:${PATH}"
WORKDIR pth-toolkit
