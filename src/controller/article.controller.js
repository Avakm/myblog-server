const articleService = require('../service/article.service')

class articleController {

    //获取文章列表
    async getArticleList(ctx,next){
        const result = await articleService.getArticleList()
        ctx.body = result
    }

    async getArticleById(ctx,next){
        const { id } = ctx.request.params
        const result = await articleService.getArticleById(id*1)
        ctx.body = result
    }

    async createArticle(ctx,next){
        const article= ctx.request.body
        const result = await articleService.createArticle(article)
        ctx.body = result
    }

    async updateArticle(ctx,next){
        const article = ctx.request.body
        const result = await articleService.updateArticle(article)
        ctx.body = result
    }

    async deleteArticle(ctx,next){
        const { id } = ctx.request.body
        const [result] = await articleService.deleteArticle(id)
        ctx.body = result
    }

}

module.exports = new articleController()