import express, { Express, Request, Response } from "express";

const app: Express = express();
app.use(express.json());
app.get('/', (request: Request, response: Response) => {
    response.status(200).json({ message: 'Hello world! Kubernetes'});
});

export default app;