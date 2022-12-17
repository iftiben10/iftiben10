FROM python:3.8

# Install Jupyter and dependencies
RUN pip install jupyter matplotlib scikit-learn pandas

# Set the working directory
WORKDIR /app

# Copy the notebooks and other files
COPY . .

# Run Jupyter
EXPOSE 8888
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
