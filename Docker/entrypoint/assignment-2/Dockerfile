FROM python:slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt
    
COPY . . 

VOLUME /app/data

ENTRYPOINT [ "./entrypoint.sh" ]
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080" ]