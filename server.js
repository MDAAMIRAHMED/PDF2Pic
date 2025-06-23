const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const PORT = 3000;

app.use(bodyParser.json());

app.post('/pdf-images', (req, res) => {
  console.log('📥 Received image paths:');
  console.log(req.body);

  res.json({ status: 'received', data: req.body });
});

app.listen(PORT, () => {
  console.log(`🚀 PDF Image API is running. Use POST http://localhost:${PORT}/pdf-images`);
});
