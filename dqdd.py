'''
new Env('DQ点单小程序')
DQ点单小程序每日签到
变量名：dqdd，抓包Cookie，必须包含SESSION
cron: 0 12 * * *
'''
import zlib,base64
exec(zlib.decompress(base64.b64decode(b'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')))