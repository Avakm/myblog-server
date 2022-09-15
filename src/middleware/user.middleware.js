const errorTypes = require('../constants/error-types');
const service = require('../service/user.service');

const verifyUser = async (ctx, next) => {
  // 1.获取用户名和密码
  console.log(ctx.request.body)
  const { username, password } = ctx.request.body;
  console.log(username,password)

  // 2.判断用户名或者密码不能空
  if (!username || !password ) {
    const error = new Error(errorTypes.NAME_OR_PASSWORD_IS_REQUIRED);
    return ctx.app.emit('error', error, ctx);
  }

  // 3.判断这次注册的用户名是没有被注册过
  const result = await service.getUserByName(username);
  if (result.length) {
    const error = new Error(errorTypes.USER_ALREADY_EXISTS);
    return ctx.app.emit('error', error, ctx);
  }

  await next();
}


module.exports = {
  verifyUser
}
