import ntplib
import time

c = ntplib.NTPClient()
res = c.request('ntp.aliyun.com')

now = time.time()

if abs(now - res.tx_time) > 360:
    print('【系统时间错误，请修改为正确的系统时间后再提交】')
    exit(1)

exit(0)
