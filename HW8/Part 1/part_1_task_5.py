nums = [3, 2, 4]
target = 6

dict = {}  #Здесь будут сохранятся числа и их индексы
for i, num in enumerate(nums):
    diff = target - num
    if diff in dict:  #Поиск пары, если разница уже встречалась
        print([dict[diff], i])
        break
    dict[num] = i
