#!/data/data/com.termux/files/usr/bin/env python
# -*- coding:utf-8 -*-

import requests
import re
import os, sys
import time

session = requests.session()
user_agent='Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36'
cfduid = '__cfduid=d6252d2a32409fd4aaa5ca81bf54d4b7c1512540683; '
distinctid = 'UM_distinctid=1602a734328bc1-07c7e841f5e638-17386d57-13c680-1602a734329bab; '
  
def login():
  sid = 'sid=00f543ef193800696f40f9a897231cfc342bb7fec8a24cfcd4827cdb6cb25e7a; '
  CNZZDATA = 'CNZZDATA1260605623=1178701526-1512540636-%7C' + str(int(time.time()))
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
  resp = session.post(request_url,data=payload,headers=headers)
  print 'LOGIN:' + str(resp.status_code)
  respSid = resp.cookies["sid"]
  print 'sid:=' + respSid
  return respSid
  
def checkin(Sid):
  sid = 'sid=' + Sid + '; '
  CNZZDATA = 'CNZZDATA1260605623=1178701526-1512540636-%7C' + str(int(time.time()))
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
  resp = session.post(request_url,data=payload,headers=headers)
  print 'CHECKIN:' + str(resp.status_code)
  print resp.raw.read()

def logout(Sid):
  sid = 'sid=' + Sid + '; '
  CNZZDATA = 'CNZZDATA1260605623=1178701526-1512540636-%7C' + str(int(time.time()))
  cookie = cfduid + distinctid + sid + CNZZDATA
  request_url='https://superssr.cf/user/logout'
  referer='https://superssr.cf/user'
  headers = {
    'accept' : 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
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
    ':method' : 'GET',
    ':path' : '/user/logout',
    ':scheme' : 'https'
  }
  resp = session.get(request_url,data=payload,headers=headers)
  print 'LOGOUT:' + str(resp.status_code)
  
if __name__ == '__main__':
  sid = login()
  time.sleep(3)
  checkin(sid)
  time.sleep(3)
  logout(sid)

