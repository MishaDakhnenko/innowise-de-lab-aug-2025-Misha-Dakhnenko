#Данные студентов
student_data = [ 
    {'name': 'Алексей', 'scores': [85, 92, 78, 95]}, 
    {'name': 'Марина', 'scores': [65, 70, 58, 82]}, 
    {'name': 'Светлана', 'scores': [98, 95, 100]} 
]

#Функция для вычисления среднего балла
def calculate_average_score(scores, ignore_lowest=False):
    #Если нужно отбросить наименьшую оценку
    if ignore_lowest and len(scores) > 1:
        scores = scores.copy() 
        scores.remove(min(scores))
    #Вычисляем среднее
    return sum(scores) / len(scores)

#Вычисление среднего без игнорирования худшей оценки
print("Средний балл (все оценки):")
for student in student_data:
    avg = calculate_average_score(student['scores'])
    print(f"{student['name']}: {avg:.2f}")

#Вычисление среднего с игнорированием худшей оценки
print("\nСредний балл (с отбросом худшей оценки):")
for student in student_data:
    avg = calculate_average_score(student['scores'], ignore_lowest=True)
    print(f"{student['name']}: {avg:.2f}")
