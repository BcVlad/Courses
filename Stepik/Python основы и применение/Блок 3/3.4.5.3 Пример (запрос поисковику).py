import requests

res = requests.get('https://yandex.ru/search/',
                   params={'text': 'Stepik'})

print(res.status_code)
print(res.headers['Content-Type'])
print(res.url)
print(res.text)