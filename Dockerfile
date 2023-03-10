FROM python:3.6
# Set the working directory in the container

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


WORKDIR /app

COPY . .


# Copy the requirements file into the container and install dependencies

RUN pip install --no-cache-dir -r requirements.txt


# Expose the default Django port (8000)
EXPOSE 8000

# Start the Django development server

CMD ["python", "./sample_django_app/manage.py" , "runserver", "0.0.0.0:8000"]