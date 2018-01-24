const Koa = require('koa')
const cors = require('koa2-cors')
const router = require('./router.js')

const app = new Koa()
app.use(cors())
const { env } = process.env
const PORT = env.split('=')[1] || 3000
app.use(router.routes())
app.listen(PORT)
