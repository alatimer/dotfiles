#Docker image for local testing of VW
#To build, run `docker build -t vw-sandbox -f Dockerfile .`
#To run, run `docker run -v $(pwd)/:/opt/ -p 8888:8888 vw-sandbox:latest`

FROM python:3.6-slim

RUN apt-get update

RUN apt-get install -y --no-install-recommends build-essential libboost-all-dev libboost-dev \
    libboost-program-options-dev libboost-system-dev libboost-thread-dev libboost-math-dev \
    libboost-test-dev libboost-python-dev zlib1g-dev cmake python3 python3-pip git wget

#Need pip.conf in this folder to copy
COPY pip.conf pip.conf
ENV PIP_CONFIG_FILE pip.conf

RUN pip3 install vowpalwabbit==8.9.0 ipython==7.12.0 pandas==1.0.1 matplotlib==3.2.0  notebook==6.0.3 scikit-learn==0.22.1

RUN wget https://github.com/google/flatbuffers/archive/v1.12.0.tar.gz -O flatbuffers-1.12.0.tar.gz
RUN tar -xzf flatbuffers-1.12.0.tar.gz
RUN cd flatbuffers-1.12.0; mkdir -p build; cd build; cmake -G "Unix Makefiles" -DFLATBUFFERS_BUILD_TESTS=Off -DFLATBUFFERS_INSTALL=On -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_BUILD_FLATHASH=Off ..; make install -j$(nproc)
RUN git clone --recursive https://github.com/VowpalWabbit/vowpal_wabbit.git; git checkout tags/8.9.0; cd vowpal_wabbit; make clean install

RUN chmod -R 755 /opt
WORKDIR /opt
CMD ["jupyter", "notebook", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''", "--allow-root", "--ip", "0.0.0.0"]
