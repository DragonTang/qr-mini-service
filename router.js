const Router = require('koa-router')

const router = new Router()

const { getQr } = require('./service')

router.get('/qr',  getQr)

module.exports = router
