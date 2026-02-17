FROM python:3.9-slim
##The FROM instruction specifies the base image for the Docker image. In this case, it uses the official Python 3.9 slim image, which is a lightweight version of Python.
WORKDIR /app
##The COPY instruction copies files from the host machine to the container. In this case, it copies the app.py file from the current directory on the host machine to the /app directory in the container.
COPY app.py .
##The RUN instruction executes a command in the container during the build process. In this case, it installs the Flask web framework using pip, which is the package installer for Python.
RUN pip install flask
##The EXPOSE instruction informs Docker that the container listens on the specified network ports at runtime. In this case, it exposes port 8080, which is commonly used for web applications.
EXPOSE 8080
##The CMD instruction specifies the command to run when the container starts. In this case, it runs the Flask application defined in app.py.
CMD ["python", "app.py"]