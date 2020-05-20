import * as http from 'http';
import * as Koa from 'koa';
import * as Proxy from 'koa-proxy';

import 'dotenv/config';

const app = new Koa();
const server = http.createServer(app.callback());

app.use(Proxy({ host: process.env.IMAGEFLOW_URL }));
console.log(`Proxying / to IMAGEFLOW_URL=${process.env.IMAGEFLOW_URL}`);

server.listen(80);
console.log('Listening on port 80');
