"""
请求api 解析图片地址 多线程下载图片

Version: 0.1
Author: LC
DateTime:2018年11月14日16:25:08
一加壹博客最Top-一起共创1+1>2的力量！~LC
LC博客url: http://oneplusone.top/index.html

"""
from time import time
from threading import Thread

import requests


class DownloadHanlder(Thread):

    def __init__(self, url):
        super().__init__()
        self.url = url

    def run(self):
        filename = self.url[self.url.rfind('/') + 1:]
        resp = requests.get(self.url)
        with open('/Users/Hao/Downloads/' + filename, 'wb') as f:   #此下载路径 改为实际存在的即可 运行
            f.write(resp.content)


def main():
    # 通过requests模块的get函数获取网络资源
    resp = requests.get(
        'http://api.tianapi.com/meinv/?key=772a81a51ae5c780251b1f98ea431b84&num=10')
    # 将服务器返回的JSON格式的数据解析为字典
    data_model = resp.json()
    for mm_dict in data_model['newslist']:
        url = mm_dict['picUrl']
        # 通过多线程的方式实现图片下载
        DownloadHanlder(url).start()


if __name__ == '__main__':
    main()