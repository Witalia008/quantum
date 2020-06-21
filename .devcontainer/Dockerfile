# We use the iqsharp-base image, as that includes
# the .NET Core SDK, IQ#, and Jupyter Notebook already
# installed for us.
FROM mcr.microsoft.com/quantum/iqsharp-base:0.11.2006.403

# Add metadata indicating that this image is used for the katas.
ENV IQSHARP_HOSTING_ENV=KATAS_DOCKERFILE

# Run some commands as root
USER root
# Install Python dependencies for the Python visualization and tutorial notebooks
RUN pip install -I --no-cache-dir \
    matplotlib \
    pytest && \
    # Give permissions to the jovyan user
    chown -R ${USER} ${HOME}

# From now own, just run things as the jovyan user
USER ${USER}

# Set the working directory to $HOME (/home/jovyan/)
WORKDIR ${HOME}
