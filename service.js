const request = require('request')
const { PassThrough } = require('stream')

module.exports.getQr = (ctx, next) => {
  const { filename, url } = ctx.query
  if (filename && url) {
    ctx.set('Content-Disposition', `attachment; filename=${filename}`)
    ctx.set('Content-Type', `image/${filename.split('.')[1]}`)
    ctx.response.body =  request(url).pipe(PassThrough())
    return 
  }
  ctx.response.status = 400
  ctx.response.body = JSON.stringify({
    code: 1,
    message: '文件名或url不存在'
  })
 }
