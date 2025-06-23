FROM n8nio/n8n

USER root

# Install dependencies
RUN apk update && \
    apk add --no-cache python3 py3-pip py3-virtualenv poppler-utils

# Create virtual environment
RUN python3 -m venv /opt/venv

# Activate virtualenv and install pdf2image
RUN /opt/venv/bin/pip install pdf2image

# Copy Python script
COPY convert_pdf.py /app/convert_pdf.py

# Create output folder
RUN mkdir -p /data/files/output_images && chown -R node:node /data

ENV PATH="/opt/venv/bin:$PATH"

USER node
