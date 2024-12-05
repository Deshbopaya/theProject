const express = require('express'); // Import Express
const app = express(); // Create an Express application
const port = 3000; // Define the port

// Define a route for the root URL
app.get('/', (req, res) => {
  res.send('Hello, World from Dockerized Node.js App!'); // Send a response
});

// Start the server
app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
