const Router = require('koa-router');

const {
  verifyAuth
} = require('../middleware/auth.middleware');
const {
  avatarHandler,
  pictureHandler,
  imageHandler,
  contentHandler,
  pictureResize
} = require('../middleware/file.middleware');
const {
  saveAvatarInfo,
  savePictureInfo,
  saveImageInfo,
  saveContentInfo
} = require('../controller/file.controller');

const fileRouter = new Router({prefix: '/upload'});

// fileRouter.post('/avatar',avatarHandler, saveAvatarInfo);
// fileRouter.post('/picture', verifyAuth, pictureHandler, pictureResize, savePictureInfo);
fileRouter.post('/image',imageHandler,saveImageInfo)
fileRouter.post('/contentImage',contentHandler,saveContentInfo)

module.exports = fileRouter;