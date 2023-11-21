FROM kartoza/postgis:16-3.4--v2023.11.04

RUN apt update && apt install postgis -y
