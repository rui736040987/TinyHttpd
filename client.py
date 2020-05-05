import requests
 
user_info = {'name': 'letian', 'password': '123'}
r = requests.post("http://192.168.31.96:4000/decode", data=user_info)
 
print(r.text)