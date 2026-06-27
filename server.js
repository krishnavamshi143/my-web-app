// server.js
const express = require('express');
const app = express();
const PORT = 3000;

// This runs when someone visits the homepage "/"
app.get('/', (req, res) => {
  res.send('Hello! My web app is running inside Docker! 🐳');
});

// This starts the server and makes it listen for visitors
app.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`);
});