import requests
from pprint import pprint

def get_orderbook_rate_quantity(orderbook):
    entry = orderbook[0]
    entry_rate, entry_quantity = float(entry["rate"]), float(entry["quantity"])
    # entry_rate_int = int(round(entry_rate * 10 ** 8, 0))
    entry_rate_int = entry_rate * 10 ** 8
    entry_quantity_btc = entry_quantity * entry_rate

    return f"{entry_rate_int:.0f} {entry_quantity_btc:.3f}"

def get_status(coin):
    coin_orderbook = requests.get(f"https://api.bittrex.com/v3/markets/{coin}-BTC/orderbook").json()
    bid_status = get_orderbook_rate_quantity(coin_orderbook["bid"])
    ask_status = get_orderbook_rate_quantity(coin_orderbook["ask"])

    return f"{coin}: {bid_status} | {ask_status}"

srn = get_status("SRN")
sc = get_status("SC")
print(f"{sc} | {srn}")
