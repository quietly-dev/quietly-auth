require('dotenv').config()

import express from 'express';
import bodyParser from 'body-parser';

const app = express();
const port = process.env.PORT ? process.env.PORT : 6001;

app.use(bodyParser.json())

app.get("/", (req: express.Request, res: express.Response) => {
    res.send("quietly-auth MicroService API is running")
});

app.listen(port, () => console.log(`quietly-auth microservice listening on port: ${port}!`));
