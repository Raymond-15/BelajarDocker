const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
    res.send('Halo! Aplikasi ini berjalan di dalam Docker Container!');
});

app.listen(PORT, () => {
    console.log(`Server berjalan di port ${PORT}`);
});