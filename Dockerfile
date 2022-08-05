FROM public.ecr.aws/lambda/python:3.9

WORKDIR /root
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN yum install -y unzip
RUN unzip awscliv2.zip
RUN ./aws/install -b /usr/bin