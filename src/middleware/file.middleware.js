const path = require('path');

const Multer = require('koa-multer');
const Jimp = require('jimp');
const { AVATAR_PATH, PICTURE_PATH, IMAGE_PATH } = require('../constants/file-path');

const avatarUpload = Multer({
  dest: AVATAR_PATH
});
const avatarHandler = avatarUpload.single('avatar');

//活动室图片
const storage = Multer.diskStorage({
  //文件保存路径
  destination(req, file, cb) {
    cb(null, './upload/image' )
  },
  //修改文件名称
  filename(req, file, cb) {
    var fileFormat = (file.originalname).split(".");  //以点分割成数组，数组的最后一项就是后缀名
    cb(null,Date.now() + "." + fileFormat[fileFormat.length - 1]);
  }
})
const imageUpload = Multer({
  storage,
})
const imageHandler = imageUpload.single('file')

//富文本图片
const storage1 = Multer.diskStorage({
  //文件保存路径
  destination(req, file, cb) {
    cb(null, './upload/content' )
  },
  //修改文件名称
  filename(req, file, cb) {
    console.log(file)
    var fileFormat = (file.originalname).split(".");  //以点分割成数组，数组的最后一项就是后缀名
    cb(null,Date.now() + "." + fileFormat[fileFormat.length - 1]);
  }
})
const contentUpload = Multer({
  storage1,
})
const contentHandler = contentUpload.single('file')

// const pictureUpload = Multer({
//   dest: PICTURE_PATH
// });

// const pictureHandler = pictureUpload.array('picture', 9);

// const pictureResize = async (ctx, next) => {
//   try {
//     // 1.获取所有的图像信息
//     const files = ctx.req.files;

//     // 2.对图像进行处理(sharp/jimp)
//     for (let file of files) {
//       const destPath = path.join(file.destination, file.filename);
//       console.log(destPath);
//       Jimp.read(file.path).then(image => {
//         image.resize(1280, Jimp.AUTO).write(`${destPath}-large`);
//         image.resize(640, Jimp.AUTO).write(`${destPath}-middle`);
//         image.resize(320, Jimp.AUTO).write(`${destPath}-small`);
//       });
//     }

//     await next();
//   } catch (error) {
//     console.log(error);
//   }
// }

module.exports = {
  avatarHandler,
  imageHandler,
  contentHandler
  // pictureHandler,
  // pictureResize
}