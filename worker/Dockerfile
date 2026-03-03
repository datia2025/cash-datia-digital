FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy worker code
COPY main.py .

# Copy the calculation script from sources
COPY calculate_indicators.py .

# Create working directory
RUN mkdir -p /app/workdir

# Expose port
EXPOSE 8000

# Health check
HEALTHCHECK --interval=30s --timeout=10s --retries=3 \
    CMD python -c "import httpx; httpx.get('http://localhost:8000/health')" || exit 1

# Run the worker
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
