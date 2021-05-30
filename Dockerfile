FROM mcr.microsoft.com/dotnet/sdk:5.0
USER root
RUN apt-get update && apt-get install -y curl
RUN curl -fsSL https://deb.nodesource.com/setup_16.x
RUN apt-get update && apt-get install -y nodejs
COPY DotnetTemplate.Web/ DotnetTemplate.Web/
WORKDIR /DotnetTemplate.Web
ENTRYPOINT ["dotnet", "run"]
