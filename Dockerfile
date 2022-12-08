#FROM python:3.10.5-slim-buster
#RUN apt update && apt upgrade -y
#RUN apt install git curl python3-pip ffmpeg -y
#RUN pip3 install -U pip
#WORKDIR .
#COPY . .

#RUN pip3 install -r requirements.txt

#ENV PORT = 8080

#EXPOSE 8080

#CMD ["python3", "bot.py"]

FROM python:3.10.5-slim-buster

WORKDIR . .
COPY . .

RUN apt update && apt upgrade -y
RUN apt install git python3-pip ffmpeg -y

RUN pip3 install -r requirements.txt

ENV PORT = 8080 

EXPOSE 8080

CMD python3 bot.py
