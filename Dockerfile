FROM tensorflow/tensorflow:latest-gpu
WORKDIR ./ds-assessment
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY poem-classification poem-classification
COPY expression-classification expression-classification
COPY readme.txt readme.txt
EXPOSE 8888
ENTRYPOINT ["jupyter","notebook","--port=8888","--ip=0.0.0.0","--allow-root","--no-browser"]
