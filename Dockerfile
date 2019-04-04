FROM mcr.microsoft.com/dotnet/core/sdk:2.1-alpine3.9
MAINTAINER Lave.C.Lei

RUN dotnet tool install --global dotnet-sonarscanner --version 4.3.1 \
  && export PATH="$PATH:/root/.dotnet/tools"

RUN apk add --no-cache --update git
