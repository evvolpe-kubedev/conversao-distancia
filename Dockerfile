FROM python:3.10.0rc2-alpine3.14
WORKDIR /app
COPY requirements.txt ./
EXPOSE 5000
RUN pip install -r requirements.txt
COPY . .
CMD [ "python" , "app.py" ]