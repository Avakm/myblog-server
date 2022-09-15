const fs = require('fs');
const bodyParser = require('koa-bodyparser')

const useRoutes = function() {
  fs.readdirSync(__dirname).forEach(file => {
    if (file === 'index.js') return;
    const router = require(`./${file}`);
    this.use(router.routes());
    this.use(router.allowedMethods(this.use(bodyParser())));
  })
}

module.exports = useRoutes;
