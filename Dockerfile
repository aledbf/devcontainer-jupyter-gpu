FROM tensorflow/tensorflow:latest-gpu-jupyter

ENV SHELL /bin/bash

RUN apt-get update && \
    apt-get -y install --reinstall ca-certificates && \
    apt-get -y install software-properties-common && \
    pip install --upgrade pip && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

RUN pip install ipykernel jupyter
RUN pip install matplotlib
RUN pip install scikit-learn
RUN pip install pandas
RUN pip install numpy
RUN pip install --extra-index-url https://pypi.anaconda.org/rapidsai-wheels-nightly/simple --pre jupyterlab_nvdashboard

EXPOSE 8888
