const Router = require('koa-router')
const classifyRouter = new Router({prefix:'/classify'})
const { getClassifyList,getClassifyById, createClassify,updateClassify,deleteClassify } = require('../controller/classify.controller')


classifyRouter.get('/',getClassifyList)
classifyRouter.get('/:id',getClassifyById)
classifyRouter.post('/',createClassify)
classifyRouter.put('/',updateClassify)
classifyRouter.delete('/',deleteClassify)

module.exports = classifyRouter