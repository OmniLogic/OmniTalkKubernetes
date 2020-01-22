FROM python:3.6.6-alpine3.8

COPY requirements.txt /ExtractionAPI/
COPY app.py /ExtractionAPI/
COPY templates /ExtractionAPI/templates

WORKDIR /ExtractionAPI
RUN pip install -r requirements.txt

CMD ["waitress-serve", "--port", "8000", "--call", "app:create_app"]