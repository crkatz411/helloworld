FROM python:3-onbuild


#-p option allows directories be created as required. No error is reported if exists
RUN mkdir -p /opt/helloworld  #-p option allows directories be created as required. No error is reported if exists

#Sets the working directory
WORKDIR /opt/helloworld

#Copy directory contents from your current directory on docker host to working directory inside docker container
COPY . .

# Install app dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 5000 
CMD ["python", "./helloworld.py"]
