const express = require('express');
const app = express();
const port = process.env.PORT || 8080;
app.get('/', (_req, res) => res.send('Hello from App1 (Node.js)! 1.0'));
app.listen(port, () => console.log(`App1 listening on ${port}`));
