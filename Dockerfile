FROM python:3.6.4

RUN pip install --upgrade pip && \
    pip install ecsctl

ENTRYPOINT [ "ecsctl" ]
