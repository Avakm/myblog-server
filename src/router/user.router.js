const Router = require('koa-router');
const {
  create,
  avatarInfo,
  getUserList,
  updateUserinfo,
  deleteUser
} = require('../controller/user.controller');
const {
  verifyUser
} = require('../middleware/user.middleware');

const userRouter = new Router({prefix: '/users'});

userRouter.post('/', verifyUser, create);
userRouter.get('/:userId/avatar', avatarInfo);
userRouter.get('/list',getUserList)
userRouter.put('/',updateUserinfo)
userRouter.delete('/',deleteUser)

module.exports = userRouter;
