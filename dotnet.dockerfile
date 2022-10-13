FROM ubuntu:20.04
RUN apt-get update && apt-get -y install 
RUN  apt-get install -y wget
RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb
RUN  apt-get update && \
  apt-get install -y dotnet-sdk-6.0

