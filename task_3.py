import random

# Загадывание числа от 1 до 10
secret_number = random.randint(1, 10)

user_input = int(input("Угадайте число от 1 до 10: "))

# Цикл продолжается, пока число не угадано
while user_input != secret_number:
    print("Неверно, попробуйте еще раз.")
    user_input = int(input("Угадайте число от 1 до 10: "))

print("Поздравляю! Вы угадали число!")
