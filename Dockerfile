FROM python:3.7.10

#Make directory for current application
WORKDIR /app

#Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt
#Copy source code
COPY /app .

EXPOSE 8050
#Run application
CMD ["python", "./app.py"]
