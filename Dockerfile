FROM mcr.microsoft.com/dotnet/sdk:5.0

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get update
RUN apt-get install -y nodejs

WORKDIR /app

COPY DotnetTemplate.Web .

RUN npm install
RUN npm run build

RUN dotnet build

ENTRYPOINT dotnet run
