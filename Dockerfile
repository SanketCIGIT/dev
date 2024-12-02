FROM python:3.9-slim

WORKDIR /myproj

COPY . /myproj

RUN pip install requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]

