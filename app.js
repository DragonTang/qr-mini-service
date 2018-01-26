const Koa = require('koa')
const cors = require('koa2-cors')
const router = require('./router.js')

const app = new Koa()
app.use(cors())
const { PORT } = process.env

app.use(router.routes())
console.log(11111111)
app.listen(PORT || 10005)   
