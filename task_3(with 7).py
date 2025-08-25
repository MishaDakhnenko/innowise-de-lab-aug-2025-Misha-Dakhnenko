secret_number = 7  # Загаданное число

while True:  
    user_input = int(input("Угадайте число от 1 до 10: "))  

    if user_input == secret_number:
        print("Поздравляю! Вы угадали число!")
        break  # выходим из цикла, программа заканчивается
    else:
        print("Неверно, попробуйте еще раз.")
