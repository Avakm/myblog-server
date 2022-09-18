const connection = require('../app/database')

class classifyService{

    async getClassifyList(){
        const statement = `SELECT * FROM classify order by id desc`;
        const [result] = await connection.execute(statement)
        return result
    }

    async getClassifyById(id){
        const statement = `SELECT * FROM classify WHERE id =?`;
        const [ result ] = await connection.execute(statement,[id])
        return result[0]
    }

    async createClassify(classify){
        const { title, content, imageUrl } = classify
        const statement = `INSERT INTO classify (title, content,imageUrl ) VALUES (?,?,?)`
        const [result] = await connection.execute(statement,[title, content,imageUrl ])
        return result
    }

    async updateClassify(classify){
        const { id,state} = classify
        const statement = `UPDATE classify SET state = ? WHERE id =?`
        const result = await connection.execute(statement,[state,id])
        return result
    }

    async deleteClassify(id){
        console.log(id)
        const statement = `DELETE FROM  classify WHERE id =?`
        const result = await connection.execute(statement,[id])
        return result
    }

}

module.exports = new classifyService()