from pdf2image import convert_from_path
import os
import json

pdf_path = "/data/files/input.pdf"
output_dir = "/data/files/output_images"
os.makedirs(output_dir, exist_ok=True)

images = convert_from_path(pdf_path)
output_files = []

for i, image in enumerate(images):
    path = f"{output_dir}/page_{i+1}.png"
    image.save(path, "PNG")
    output_files.append(path)

print(json.dumps({"status": "success", "pages": output_files}))
