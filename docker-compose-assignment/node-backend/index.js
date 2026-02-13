const express = require('express');
const app = express();

const HOST = '0.0.0.0';
const PORT = 3000;

app.get('/', (req, res) => res.send('Backend is running... Maje karo Khush raho :D'));

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
