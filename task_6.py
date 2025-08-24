try:
    # Запрашиваем данные у пользователя
    num1 = float(input("Введите первое число: "))
    operation = input("Введите операцию (+, -, *, /): ")
    num2 = float(input("Введите второе число: "))
    
    # Выполняем операцию
    if operation == '+':
        result = num1 + num2
        print(f"Результат: {num1} + {num2} = {result}")
    elif operation == '-':
        result = num1 - num2
        print(f"Результат: {num1} - {num2} = {result}")
    elif operation == '*':
        result = num1 * num2
        print(f"Результат: {num1} * {num2} = {result}")
    elif operation == '/':
        if num2 != 0:
            result = num1 / num2
            print(f"Результат: {num1} / {num2} = {result}")
        else:
            print("Ошибка: деление на ноль!")
    else:
        print("Ошибка: неизвестная операция!")
        
except ValueError:
    print("Ошибка: пожалуйста, вводите только числа!")
except Exception as e:
    print(f"Произошла ошибка: {e}")