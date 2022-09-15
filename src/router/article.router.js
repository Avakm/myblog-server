const Router = require('koa-router')
const articleRouter = new Router({prefix:'/article'})
const { getArticleList,getArticleById, createArticle,updateArticle,deleteArticle } = require('../controller/article.controller')


articleRouter.get('/',getArticleList)
articleRouter.get('/:id',getArticleById)
articleRouter.post('/',createArticle)
articleRouter.put('/',updateArticle)
articleRouter.delete('/',deleteArticle)

module.exports = articleRouter