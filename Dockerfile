FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt-get update -y && apt-get upgrade -y && apt-get install wget -y
COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
