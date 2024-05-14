FROM python:3.12

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 1337

CMD [ "flask", "run", "--host=0.0.0.0", "--port=1337" ]
