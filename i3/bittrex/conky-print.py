from api import *

b = Bittrex('', '')

currency = 'QTUM'
market = 'BTC-{}'.format(currency)
buy_rate = 0.00239993

market_history = b.get_market_history(market, 100)['result']
buy_volume = 0.0
sell_volume = 0.0
for order_details in market_history:
    quantity = order_details['Quantity']
    order_type = order_details['OrderType']
    if order_type == 'BUY':
        buy_volume += quantity
    else:
        sell_volume += quantity

current_rate = b.get_ticker('BTC-QTUM')['result']['Last']

print('QTUM {:.2f}% {} {}'.format(current_rate / buy_rate, round(buy_volume), round(sell_volume)))
