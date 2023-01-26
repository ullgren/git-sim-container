FROM python:slim

RUN apt update && \
  apt install -y \
    build-essential python3-dev libcairo2-dev \
    libpango1.0-dev ffmpeg git && \
  apt clean && \
  pip3 install git-sim

VOLUME [ "/src" ]
WORKDIR /src
ENTRYPOINT ["git-sim", "-d"]
