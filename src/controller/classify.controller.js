const classifyService = require('../service/classify.service')

class classifyController {
    //获取分类列表。
    async getClassifyList(ctx,next){
        const result = await classifyService.getClassifyList()
        ctx.body = result
    }

    //通过id获取分类
    async getClassifyById(ctx,next){
        const { id } = ctx.request.params
        const result = await classifyService.getClassifyById(id*1)
        ctx.body = result
    }

    async createClassify(ctx,next){
        const classify= ctx.request.body
        const result = await aclassifyService.createClassify(article)
        ctx.body = result
    }

    async updateClassify(ctx,next){
        const article = ctx.request.body
        const result = await classifyService.updateClassify(article)
        ctx.body = result
    }

    async deleteClassify(ctx,next){
        const { id } = ctx.request.body
        const [result] = await classifyService.deleteClassify(id)
        ctx.body = result
    }

}

module.exports = new classifyController()