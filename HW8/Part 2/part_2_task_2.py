# Начальные данные
prices = [1000, 3499, 250]
nds = 0.20

#Функция для расчёта цены с НДС
def add_vat(price):
    return price + price * nds

#Применение функции ко всем элементам списка через цикл
for price in prices:
    final_price = add_vat(price)
    print(final_price)
