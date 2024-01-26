FROM golang:1.15.6

ENV GO111MODULE="on"

ENV GOPROXY="https://goproxy.cn"

#ENV RUNTIME="mainnet"

RUN mkdir application

COPY . ./application

WORKDIR "application"

RUN  wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb  && \
     dpkg -i packages-microsoft-prod.deb  && \
     rm packages-microsoft-prod.deb

RUN   apt-get update  && \
      apt-get install -y apt-transport-https  && \
      apt-get update  && \
      rm -rf /var/lib/apt/lists/*

RUN  apt-get install -y dotnet-sdk-7.0
RUN  apt-get install -y aspnetcore-runtime-7.0

RUN  apt-get install -y  python3  && \
     apt-get install -y python3-venv

##neo3-boa 1.1.0
#RUN python3 -m venv venv1010
#RUN echo "dash dash/sh boolean false" | debconf-set-selections
#RUN DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash
#RUN /bin/sh -c 'source venv1010/bin/activate && pip install neo3-boa==1.1.0'

##neo3-boa 1.0.1
RUN python3 -m venv venv1001 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv1001/bin/activate && pip install neo3-boa==1.0.1'

##neo3-boa 1.0.0
RUN python3 -m venv venv1000 && \
    echo "dash dash/sh boolean false" | debconf-set-selections&& \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv1000/bin/activate && pip install neo3-boa==1.0.0'

##neo3-boa 0.14.0
RUN python3 -m venv venv140 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv140/bin/activate && pip install neo3-boa==0.14.0'

##neo3-boa 0.13.1
RUN python3 -m venv venv131 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv131/bin/activate && pip install neo3-boa==0.13.1'

##neo3-boa 0.13.0
RUN python3 -m venv venv130 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv130/bin/activate && pip install neo3-boa==0.13.0'

##neo3-boa 0.12.3
RUN python3 -m venv venv123 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv123/bin/activate && pip install neo3-boa==0.12.3'

##neo3-boa 0.12.2
RUN python3 -m venv venv122 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv122/bin/activate && pip install neo3-boa==0.12.2'

##neo3-boa 0.12.1
RUN python3 -m venv venv121 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv121/bin/activate && pip install neo3-boa==0.12.1'

##neo3-boa 0.12.0
RUN python3 -m venv venv120 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv120/bin/activate && pip install neo3-boa==0.12.0'

##neo3-boa 0.11.4
RUN python3 -m venv venv114 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv114/bin/activate && pip install neo3-boa==0.11.4'
#RUN /bin/sh -c 'source venv114/bin/deactivate'

##neo3-boa 0.11.3
RUN python3 -m venv venv113 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv113/bin/activate && pip install neo3-boa==0.11.3'
#RUN /bin/sh -c 'source venv113/bin/deactivate'

##neo3-boa 0.11.2
RUN python3 -m venv venv112 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv112/bin/activate && pip install neo3-boa==0.11.2'
#RUN /bin/sh -c 'source venv112/bin/deactivate'

##neo3-boa 0.11.1
RUN python3 -m venv venv111 && \
     echo "dash dash/sh boolean false" | debconf-set-selections && \
     DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
     /bin/sh -c 'source venv111/bin/activate && pip install neo3-boa==0.11.1'
#RUN /bin/sh -c 'source venv111/bin/deactivate'

##neo3-boa 0.11.0
RUN python3 -m venv venv110  && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv110/bin/activate && pip install neo3-boa==0.11.0'
#RUN /bin/sh -c 'source venv110/bin/deactivate'

##neo3-boa 0.10.1
RUN python3 -m venv venv101 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv101/bin/activate && pip install neo3-boa==0.10.1'
#RUN /bin/sh -c 'source venv101/bin/deactivate'

##neo3-boa 0.10.0
RUN python3 -m venv venv100 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv100/bin/activate && pip install neo3-boa==0.10.0'
#RUN /bin/sh -c 'source venv100/bin/deactivate'

##neo3-boa 0.9.0
RUN python3 -m venv venv090 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv090/bin/activate && pip install neo3-boa==0.9.0'
#RUN /bin/sh -c 'source venv090/bin/deactivate'

##neo3-boa 0.8.3
RUN python3 -m venv venv083 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv083/bin/activate && pip install neo3-boa==0.8.3'
#RUN /bin/sh -c 'source venv083/bin/deactivate'

##neo3-boa 0.8.2
RUN python3 -m venv venv082 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv082/bin/activate && pip install neo3-boa==0.8.2'
#RUN /bin/sh -c 'source venv082/bin/deactivate'

##neo3-boa 0.8.1
RUN python3 -m venv venv081 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv081/bin/activate && pip install neo3-boa==0.8.1'
#RUN /bin/sh -c 'source venv081/bin/deactivate'

##neo3-boa 0.8.0
RUN python3 -m venv venv080 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv080/bin/activate && pip install neo3-boa==0.8.0'
#RUN /bin/sh -c 'source venv080/bin/deactivate'

##neo3-boa 0.7.1
RUN python3 -m venv venv071 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv071/bin/activate && pip install neo3-boa==0.7.1'
#RUN /bin/sh -c 'source venv071/bin/deactivate'

##neo3-boa 0.7.0
RUN python3 -m venv venv070 && \
    echo "dash dash/sh boolean false" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash && \
    /bin/sh -c 'source venv070/bin/activate && pip install neo3-boa==0.7.0'
#RUN /bin/sh -c 'source venv070/bin/deactivate'



RUN apt install -y openjdk-11-jre-headless && \
    apt install -y default-jdk

RUN tar -zxvf compiler2.tar.gz && \
    chmod 777 compiler2/3.1/net6.0/nccs.exe && \
    chmod 777 compiler2/3.3/net6.0/nccs.exe && \
    chmod 777 compiler2/3.4/net6.0/nccs.exe && \
    chmod 777 compiler2/3.5/net6.0/nccs.exe && \
    chmod 777 compiler2/3.6/net7.0/nccs.exe && \
    chmod 777 compiler2/3.6.2/net7.0/nccs.exe

#RUN tar -zxvf contract.tar.gz

RUN wget https://github.com/nspcc-dev/neo-go/releases/download/v0.98.0/neo-go-linux-amd64 && \
    chmod +x neo-go-linux-amd64&& \
    mv neo-go-linux-amd64 /usr/bin/neo-go

#RUN export GOROOT="/usr/local/go"

RUN  go build -o main main.go

EXPOSE 1927

CMD ["./main"]
