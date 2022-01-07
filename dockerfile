FROM debian

RUN apt-get update &&\
    apt-get -y install python3 python3-dev python3-pip &&\
    apt-get -y install libffi-dev libssl-dev

RUN pip3 install -U setuptools
RUN pip3 install gevent msgpack-python greenlet

RUN git clone https://github.com/olinek2/LGAC_SmartT
RUN cd LGAC_SmartT
RUN pip3 install -e .
