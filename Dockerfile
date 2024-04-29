FROM python:3.12.3-bookworm

WORKDIR /project

COPY . .

RUN apt update && apt dist-upgrade -y
RUN apt install ffmpeg -y
RUN pip install -U wheel
RUN pip install -U ipykernel numpy ultralytics

ENTRYPOINT [ "top","-b" ]