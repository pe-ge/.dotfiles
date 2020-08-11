import requests

btc = requests.get("https://api.bittrex.com/api/v1.1/public/getticker?market=USD-BTC").json()["result"]["Last"]

doge = requests.get('https://api.bittrex.com/api/v1.1/public/getorderbook?market=BTC-DOGE&type=both').json()['result']
doge_buy = doge['buy'][0]
doge_buy_rate = doge_buy['Rate']
doge_buy_price = doge_buy['Quantity'] * doge_buy_rate
doge_buy_rate = int(doge_buy_rate * 10 ** 8)
doge_buy_price = round(doge_buy_price, 1)

doge_sell = doge['sell'][0]
doge_sell_rate = doge_sell['Rate']
doge_sell_price = doge_sell['Quantity'] * doge_sell_rate
doge_sell_rate = int(doge_sell_rate * 10 ** 8)
doge_sell_price = round(doge_sell_price, 1)

print(f'(BTC) {btc} (DOGE) B:{doge_buy_price} {doge_buy_rate} S:{doge_sell_price} {doge_sell_rate}')
