FROM python:slim

RUN apt update && \
  apt install -y \
    build-essential python3-dev libcairo2-dev \
    libpango1.0-dev ffmpeg git && \
  apt clean 
RUN pip3 install -Iv git-sim==0.1.4

VOLUME [ "/src" ]
WORKDIR /src
ENTRYPOINT ["git-sim", "-d"]
