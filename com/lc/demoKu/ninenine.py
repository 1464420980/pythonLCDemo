#!/usr/bin/python
# -*- coding: UTF-8 -*-

for i in  range(1,10):

    for j in range(1,i+1):
        print("%d*%d=%d" % (i, j, i*j), end='')
        print()

# -*- coding: UTF-8 -*-

# Filename : ninenine.py
# author by : www.oneplusone.top


# 九九乘法表 开始
for i in range(1, 10):
    for j in range(1, i + 1):
        print('{}x{}={}\t'.format(i, j, i * j), end='')
    print()