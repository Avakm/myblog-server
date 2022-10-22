const Koa = require('koa');
const bodyParser = require('koa-bodyparser');
// const koaBody  = require('koa-body')
const errorHandler = require('./error-handle');
const useRoutes = require('../router');
const koaStatic = require('koa-static')
const path = require('path')

const app = new Koa();

app.useRoutes = useRoutes;

//解决跨域
app.use(async (ctx, next)=> {
    ctx.set('Access-Control-Allow-Origin', '*');
    ctx.set('Access-Control-Allow-Headers', 'Content-Type, Content-Length, Authorization, Accept, X-Requested-With');
    ctx.set('Access-Control-Allow-Methods', 'PUT, POST, GET, DELETE, OPTIONS');
    if (ctx.method == 'OPTIONS') {
      ctx.body = 200; 
    } else {
      await next();
    }
});
app.use(bodyParser())
// app.use(koaBody({
//   multipart: true
// }))
app.useRoutes();
// 存放图片文件路径
app.use(koaStatic(path.join(__dirname, '../../upload/image')))
app.on('error', errorHandler);

module.exports = app;
