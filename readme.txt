build the image
docker build -t="faten001/ds-assessment" github.com/faten001/ds-assessment.git#main
run the image and set the port
docker run -p 8888:8888 faten001/ds-assessment
to start the container
docker start -i container-name
