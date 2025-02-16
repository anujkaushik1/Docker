const express = require('express');
const app = express();

app.get('/', (req, res) => {
    return res.json({status: 'success', msg: "Hello from docker"});
})

app.listen(3000, () => {
    console.log('Server listening on port 3000');
    
})