shopping_list = ["milk", "bread", "eggs", "butter", "apples"]
print("Список покупок:")

# enumerate() возвращает индекс и элемент при переборе
# start=1 позволяет начать нумерацию с единицы
for index, item in enumerate(shopping_list, start=1):
    print(f"{index}. {item}")