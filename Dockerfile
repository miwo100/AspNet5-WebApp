FROM microsoft/aspnet:1.0.0-rc1-final

COPY . /app
WORKDIR /app
RUN ["dnu", "restore"]

EXPOSE 5004
ENTRYPOINT ["dnx", "-p", "project.json", "web"]