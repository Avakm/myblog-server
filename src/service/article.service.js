const connection = require('../app/database')

class articleService{

    async getArticleList(){
        const statement = `SELECT * FROM Article order by id desc`;
        const [result] = await connection.execute(statement)
        return result
    }

    async getArticleById(id){
        const statement = `SELECT * FROM article WHERE id =?`;
        const [ result ] = await connection.execute(statement,[id])
        return result[0]
    }

    async createArticle(Article){
        const { title, content, imageUrl } = Article
        const statement = `INSERT INTO article (title, content,imageUrl ) VALUES (?,?,?)`
        const [result] = await connection.execute(statement,[title, content,imageUrl ])
        return result
    }

    async updateArticle(Article){
        const { id,state} = Article
        const statement = `UPDATE article SET state = ? WHERE id =?`
        const result = await connection.execute(statement,[state,id])
        return result
    }

    async deleteArticle(id){
        console.log(id)
        const statement = `DELETE FROM  article WHERE id =?`
        const result = await connection.execute(statement,[id])
        return result
    }

}

module.exports = new articleService()