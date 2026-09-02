FROM python:3.11-slim
WORKDIR /app
RUN pip install uv
COPY . .
RUN uv sync --frozen
EXPOSE 8000
CMD ["uv", "run", "fcc-server", "--host", "0.0.0.0", "--port", "8000"]
