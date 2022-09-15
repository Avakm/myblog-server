const errorTypes = require('../constants/error-types');
const studentService = require('../service/student.service')


const verifyStudent = async (ctx,next)=>{
    const { number } = ctx.request.body
    const result = await  studentService.getStudentBynum(number)
    if(result.length){
        const error = new Error(errorTypes.STUDENT_READY_EXISTS);
        return ctx.app.emit('error', error, ctx);
    }

    await next()
}

module.exports ={
    verifyStudent
}