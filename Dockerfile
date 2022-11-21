FROM python:3.10.7-alpine3.16

WORKDIR /app

ADD ./requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY . /app/

CMD ["python", "main.py"]
