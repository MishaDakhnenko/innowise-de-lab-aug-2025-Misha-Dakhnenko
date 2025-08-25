import random

# Загадываем случайное число от 1 до 5
secret_number = random.randint(1, 5)

# Запрашиваем число у пользователя
user_guess = int(input("Угадай число от 1 до 5: "))

# Сравниваем числа и выводим результат
if user_guess == secret_number:
    print("Ты угадал!")
elif user_guess > secret_number:
    print("Слишком много!")
else:
    print("Слишком мало!")
    