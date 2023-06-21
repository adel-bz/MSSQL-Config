FROM mcr.microsoft.com/mssql/server:2022-latest

# Create a config directory
WORKDIR /home/mssql/app

# Bundle config source
COPY ./db /home/mssql/app

EXPOSE 1433

ENTRYPOINT ["./entrypoint.sh"]
