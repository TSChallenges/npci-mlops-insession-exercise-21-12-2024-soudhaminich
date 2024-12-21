# pull python base image
FROM python:3.10

# add requirements file & trained model
#Todo
ADD requirements.txt .
ADD *.pkl .

# update pip
#Todo
RUN pip install --upgrade pip

# install dependencies
#Todo
RUN pip install -r requirements.txt

# add application file
#Todo
ADD main.py .

# expose port where your application will be running
#Todo
EXPOSE 7860


# start application
#Todo
CMD ["python", "app.py"]
