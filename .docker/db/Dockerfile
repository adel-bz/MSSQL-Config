FROM mcr.microsoft.com/mssql/server:2022-latest

# Create a config directory
WORKDIR /home/mssql/app

# Bundle config source
COPY . /home/mssql/app

# Grant permissions for to our scripts to be executable
RUN chmod +x /home/mssql/app
RUN chmod +x /home/mssql/app

ENTRYPOINT ["./entrypoint.sh"]
