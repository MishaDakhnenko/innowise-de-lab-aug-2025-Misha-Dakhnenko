#Исходный список
fruits = ["apple", "banana"]
print(f"Начальный список: {fruits}")

#Добавление элемента в конец при помощи append
fruits.append("orange")
print(f"Добавление в конец списка 'orange': {fruits}")

#Добавление элемента при помощи grape
fruits.insert(1, "grape")
print(f"Добавление 'grape': {fruits}")

#Удаление элемента при помощи remove
fruits.remove("banana")
print(f"Удаление 'banana': {fruits}")

#Сортировка при помощи sort
fruits.sort()
print(f"Сортировка списка: {fruits}")

#Переворот списка при помощи reverse 
fruits.reverse()
print(f"Переворот списка: {fruits}")