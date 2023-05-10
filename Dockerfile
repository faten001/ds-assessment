FROM tensorflow/tensorflow:latest-gpu
WORKDIR ./ds-assessment
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY requirements.txt requirements.txt
COPY docker-compose.yaml docker-compose.yaml
COPY poem-classification poem-classification
COPY expression-classification expression-classification
EXPOSE 8888
ENTRYPOINT ["jupyter","notebook","--ip=0.0.0.0","--allow-root","--no-browser"]