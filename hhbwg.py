'''
new Env('荷花博物馆小程序')
荷花博物馆小程序签到有奖
变量名：hhbwg，抓包openid
cron: 0 12 * * *
'''
import zlib,base64
exec(zlib.decompress(base64.b64decode(b'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')))