const fs = require('fs');

const userService = require('../service/user.service');
const fileService = require('../service/file.service');
const { AVATAR_PATH } = require('../constants/file-path');


class UserController {
  async create(ctx, next) {
    // 获取用户请求传递的参数
    const user = ctx.request.body;

    // 查询数据
    const result = await userService.create(user);
    // 返回数据
    ctx.body = result;
  }

  async avatarInfo(ctx, next) {
    // 1.用户的头像是哪一个文件呢?
    const { userId } = ctx.params;
    const avatarInfo = await fileService.getAvatarByUserId(userId);

    // 2.提供图像信息
    ctx.response.set('content-type', avatarInfo.mimetype);
    ctx.body = fs.createReadStream(`${AVATAR_PATH}/${avatarInfo.filename}`);
  }

  //获取用户列表
  async getUserList(ctx,next){
    const { page, size, username } = ctx.query
    console.log(page,size,username)
    //查询数据
    const list = await userService.getUserList(page,size,username)
    const total = await userService.getUserTotal(username)
    ctx.body = {
      list,
      total
    }
  }

  //更新用户信息
  async updateUserinfo(ctx,next){
    const { username, password, role} = ctx.request.body
    const result = await userService.updateUserinfo( username, password, role)
    ctx.body = result
  }

  async deleteUser(ctx,next){
    const {username} = ctx.request.body
    const result = await userService.deleteUser(username)
    ctx.body = result
  }
}

module.exports = new UserController();
