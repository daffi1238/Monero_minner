#Build with a custom name -> sudo docker build -t monero_minner . # the image will have Telegram/Bot as name
#remove: sudo docker rmi monero_minner -f
#Execute: sudo docker run --rm -it --entrypoint bash monero_minner
FROM debian

RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install -y net-tools
#  && rm -rf /var/lib/apt/lists/*

#RUN mkdir /minexmr
WORKDIR /monero_minner


#RUN wget https://github.com/nanopool/nanominer/releases/download/v3.7.0/nanominer-linux-3.7.0-cuda11.tar.gz
#RUN tar -xf nanominer-linux-3.7.0-cuda11.tar.gz
#ADD config.ini /monero_minner

#Check latest version in https://xmrig.com/
##xmrig
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.18.0/xmrig-6.18.0-bionic-x64.tar.gz
RUN tar -xf xmrig-6.18.0-bionic-x64.tar.gz

#ADD bck_bot.py /bck_bot
#ADD .env /bck_bot

#RUN pip install --upgrade pip
#RUN pip install pyTelegramBotAPI
#RUN pip install python-dotenv

ENTRYPOINT /monero_minner/xmrig-6.18.0/xmrig pool.supportxmr.com:3333 -u 8ByvfLw6fv7hanUoQoSiHQCjsuJzdYqFpP1DJ1T6s8EaWVGbxrL1S21e9frGszkdV9FDiqtopfACgBecKimPcAbt2oJrKfp -p MyWorker1
