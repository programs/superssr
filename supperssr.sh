#!/data/data/com.termux/files/usr/bin/env python
# -*- coding:utf-8 -*-

import requests
import re
import os, sys
import time

def checkin():
  tm = str(int(time.time()))
  cookie = '__cfduid=d6252d2a32409fd4aaa5ca81bf54d4b7c1512540683; UM_distinctid=1602a734328bc1-07c7e841f5e638-17386d57-13c680-1602a734329bab; sid=d6991e2621c7d09f05e0a69fa4d29d7c32671f2ea5cfedca645cbf0ef478f81b; CNZZDATA1260605623=1178701526-1512540636-%7C' + tm
  request_url='https://superssr.cf/user/checkin2'
  user_agent='Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'
  referer='https://superssr.cf/user'
  headers = {
    'accept' : 'application/json, text/javascript, */*; q=0.01',
    'accept-encoding' : 'gzip, deflate, br',
    'accept-language' : 'en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7',
    'content-length' : '0',
    'cookie' : cookie,
    'origin' : 'https://superssr.cf',
    'referer' : referer,
    'user-agent' : user_agent,
    'x-requested-with' : 'XMLHttpRequest'
  }
  payload = {
    ':authority' : 'superssr.cf',
    ':method' : 'POST',
    ':path' : '/user/checkin2',
    ':scheme' : 'https'
  }
  session = requests.session()
  response= session.post(request_url,data=payload,headers=headers)
  print response

if __name__ == '__main__':
  checkin()

