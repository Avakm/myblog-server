const jwt = require('jsonwebtoken');
const { PRIVATE_KEY } = require('../app/config');

class AuthController {
  async login(ctx, next) {
    const { id, username ,role } = ctx.user;
    const token = jwt.sign({ id, username }, PRIVATE_KEY, {
      expiresIn: 60 * 60 * 24,
      algorithm: 'RS256'
    });
    
    ctx.body = { id, username , token,role }
  }

  async success(ctx, next) {
    ctx.body = "授权成功~";
  }
}

module.exports = new AuthController();
