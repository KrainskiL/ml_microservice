FROM python:3.7.3-stretch

# Create a working directory
WORKDIR /app

# Copy source code to working directory
COPY requirements.txt /app
COPY app.py /app
COPY model_data/boston_housing_prediction.joblib /app/model_data/

# Install packages from requirements.txt
RUN pip install -r ./requirements.txt
# hadolint ignore=DL3013

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]
