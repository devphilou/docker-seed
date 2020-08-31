import express, { Application, Request, Response } from 'express';

import bodyParser from 'body-parser';

const serverApp: Application = express();
const PORT = process.env.PORT || 4000;

serverApp.use(bodyParser.json());
serverApp.use(bodyParser.urlencoded({ extended: true }));

serverApp.get('/', (req: Request, res: Response) => {
    res.send('Server up and running');
});

serverApp.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
})