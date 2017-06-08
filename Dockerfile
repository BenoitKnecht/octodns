FROM python:2-alpine

COPY . /tmp/octodns

RUN pip install boto3
RUN pip install /tmp/octodns && rm -rf /tmp/octodns

CMD /bin/sh
