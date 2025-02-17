FROM gitpod/workspace-python:latest

USER gitpod

# Install uv
RUN curl -LsSf https://astral.sh/uv/install.sh | sh