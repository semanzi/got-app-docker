FROM python:3.7.10

#Make directory for current application
RUN mkdir app
WORKDIR app

#Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt
#Copy source code
COPY . ./

#Run application
CMD ["gunicorn", "--workers=5", "--threads=1", "-b 0.0.0.0:8000", "app:server"]
