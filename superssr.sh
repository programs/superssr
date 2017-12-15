#!/data/data/com.termux/files/usr/bin/env python
# -*- coding:utf-8 -*-

import requests
import re
import os, sys
import time

session = requests.session()
user_agent='Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'

def login():
  tm = str(int(time.time()))
  cfduid = '__cfduid=d6252d2a32409fd4aaa5ca81bf54d4b7c1512540683; '
  distinctid = 'UM_distinctid=1602a734328bc1-07c7e841f5e638-17386d57-13c680-1602a734329bab; '
  sid = 'sid=00f543ef193800696f40f9a897231cfc342bb7fec8a24cfcd4827cdb6cb25e7a; '
  CNZZDATA = 'CNZZDATA1260605623=1178701526-1512540636-%7C' + tm
  cookie = cfduid + distinctid + sid + CNZZDATA
  request_url='https://superssr.cf/auth/login'
  referer='https://superssr.cf/auth/login'
  headers = {
    'accept' : 'application/json, text/javascript, */*; q=0.01',
    'accept-encoding' : 'gzip, deflate, br',
    'accept-language' : 'en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7',
    'content-length' : '56',
    'content-type' : 'application/x-www-form-urlencoded; charset=UTF-8',
    'cookie' : cookie,
    'origin' : 'https://superssr.cf',
    'referer' : referer,
    'user-agent' : user_agent,
    'x-requested-with' : 'XMLHttpRequest'
  }
  payload = {
    ':authority' : 'superssr.cf',
    ':method' : 'POST',
    ':path' : '/auth/login',
    ':scheme' : 'https',
    'email' : 'okenlee@126.com',
    'passwd' : 'Vpn1357_',
    'remember_me' : 'week'
  }
  response= session.post(request_url,data=payload,headers=headers)
  print response
  print response.cookies
  
def checkin():
  tm = str(int(time.time()))
  cfduid = '__cfduid=d6252d2a32409fd4aaa5ca81bf54d4b7c1512540683; '
  distinctid = 'UM_distinctid=1602a734328bc1-07c7e841f5e638-17386d57-13c680-1602a734329bab; '
  sid = 'sid=00f543ef193800696f40f9a897231cfc342bb7fec8a24cfcd4827cdb6cb25e7a; '
  CNZZDATA = 'CNZZDATA1260605623=1178701526-1512540636-%7C' + tm
  cookie = cfduid + distinctid + sid + CNZZDATA
  request_url='https://superssr.cf/user/checkin2'
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
  response= session.post(request_url,data=payload,headers=headers)
  print response

if __name__ == '__main__':
  login()

