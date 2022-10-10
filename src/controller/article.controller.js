const articleService = require('../service/article.service')

class articleController {

    //获取文章列表
    async getArticleList(ctx,next){
        const result = await articleService.getArticleList()
        ctx.body = result
    }

    //根据id查看文章信息
    async getArticleById(ctx,next){
        const { id } = ctx.request.params
        const result = await articleService.getArticleById(id*1)
        ctx.body = result
    }

    //发表文章
    async createArticle(ctx,next){
        const article= ctx.request.body
        const result = await articleService.createArticle(article)
        ctx.body = result
    }

    //更新文章
    async updateArticle(ctx,next){
        const article = ctx.request.body
        const result = await articleService.updateArticle(article)
        ctx.body = result
    }

    //删除文章
    async deleteArticle(ctx,next){
        const { id } = ctx.request.body
        const [result] = await articleService.deleteArticle(id)
        ctx.body = result
    }

}

module.exports = new articleController()