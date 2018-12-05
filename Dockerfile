FROM commands/wkhtmltoimage:latest


RUN apt-get update && apt-get install -y unzip &&\ 
    mkdir ~/.fonts &&\
    wget 'https://ja.osdn.net/projects/ipafonts/downloads/57330/IPAexfont00201.zip' &&\
    unzip IPAexfont00201.zip &&\
    mv IPAexfont00201/*.ttf ~/.fonts/ &&\
    rm -rf IPAexfont00201* &&\
    apt-get --purge -y remove wget &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /data/

ENTRYPOINT ["/data/entrypoint.sh"]
