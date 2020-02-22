FROM python:3.8

COPY londonbikes /app/
COPY requirements.txt /app/

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["/app/londonbikes"]
