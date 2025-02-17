FROM gitpod/workspace-python:latest

USER gitpod

# Install uv
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# Create a Python virtual environment using uv
RUN uv venv /home/gitpod/.venv

# Add the virtual environment to PATH
ENV PATH="/home/gitpod/.venv/bin:$PATH"

# Activate the virtual environment
ENV VIRTUAL_ENV="/home/gitpod/.venv"

RUN uv sync