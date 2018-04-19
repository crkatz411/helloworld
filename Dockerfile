FROM python:3-onbuild

# Install app dependencies
RUN pip install -r requirements.txt

EXPOSE 5000 
CMD ["python", "./helloworld.py"]
