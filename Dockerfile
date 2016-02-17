FROM ubuntu:15.10

MAINTAINER yuurio <yuuri.o@gmail.com>

RUN apt-get update && apt-get install -y \
	git \
	curl \
	python3 \
	python3-dev \
	g++

RUN curl -kL https://bootstrap.pypa.io/get-pip.py | python3

RUN pip install -U setuptools

RUN pip install \
	numpy==1.10.4 \
	six==1.9 \
	filelock 

RUN pip install \
	chainer==1.6.1

#cd /root

#RUN git clone https://github.com/pfnet/chainer.git

#cd /root/chainer/examples/mnist

#CMD python3 train_mnist.py

