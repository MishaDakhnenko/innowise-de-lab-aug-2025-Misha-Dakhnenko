scores = [75, 88, 95, 0, 100]
total_score = 0

for score in scores:
    # Пропуск, если балл отрицательный
    if score < 0:
        continue

    # Если встретился ноль, прерываем цикл
    if score == 0:
        print("Обработка прервана.")
        break

    # В остальных случаях добавляем балл
    total_score += score
    print(f"Добавлен балл: {score}")
else:
    # else выполнится, только если цикл завершился без break
    print("Все данные успешно обработаны.")

print(f"\nИтоговая сумма баллов: {total_score}")