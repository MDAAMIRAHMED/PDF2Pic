# 📄 PDF2Pic

`PDF2Pic` is a tool I built to automatically convert PDF files into individual image files using **n8n**, **Python (pdf2image)**, and **Node.js**.

It uses a Dockerized Python script to handle the conversion, and a lightweight Express API to receive the image paths for further automation.

This project streamlines PDF-to-image conversion in backend workflows with minimal setup.

## 💡 Motivation

Handling PDFs manually for image extraction is tedious, especially in automation workflows. 

I built `PDF2Pic` to eliminate the need for manual intervention by turning PDF pages into images automatically within an **n8n** pipeline.

This solution is essential for systems that rely on PDF content—like invoices, forms, or documents—making them easier to process, visualize, or extract data from.

## 🧰 Tech Stack

- **n8n** – For building and orchestrating the workflow automation.
- **Python** – Used with the `pdf2image` library to convert PDF pages to images.
- **Poppler** – A PDF rendering backend required by `pdf2image` for accurate conversion.
- **Node.js + Express** – To handle HTTP requests and receive image path data.
- **Docker** – To containerize and run the entire setup consistently across environments.

## 🚀 Quick Start

### 1. Clone the repository
```bash
git clone git@github.com:MDAAMIRAHMED/PDF2Pic.git
cd pdf2pic
```

### 2. Install dependencies for the Node.js API
```bash
npm install
```

### 3. Start the Node.js server
```bash
node server.js
```
The server will run at http://localhost:3000

### 4. Start n8n (in a separate terminal)
```bash
docker run -it --rm ^
  -v D:\pdf2pic\data\files:/data/files ^
  -p 5678:5678 ^
  n8n-pdf-converter
```

### 5. Upload a PDF to the shared /data/files/input.pdf path

### 6. Open n8n in your browser
http://localhost:5678

### 7. Run the n8n workflow to convert the PDF to images
The server will receive the image paths and respond


## 🤝 Contributing

This project is currently maintained by me. Feel free to open issues or suggest improvements.
