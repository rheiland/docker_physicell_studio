FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# This fix: libGL error: No matching fbConfigs or visuals found
ENV LIBGL_ALWAYS_INDIRECT=1

RUN apt-get update && apt-get install -y python3-pyqt5 python3-pyqt5.qtsvg python3-pip

RUN pip install PySide6 numpy matplotlib scipy pandas

RUN mkdir -p /tmp/bin
RUN mkdir -p /tmp/config


COPY ./bin/* /tmp/bin/
COPY ./config/* /tmp/config/
