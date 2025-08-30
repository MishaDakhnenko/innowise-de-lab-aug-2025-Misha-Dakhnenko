#Задаем строку
email = " USER@DOMAIN.COM "
#Очищаем строку от пробелов
cleaned_email = email.strip()
#Форматирование строки
normalized_email = cleaned_email.lower()
print(normalized_email)

#Разделене строки на имя пользователя и домен
username, domain = normalized_email.split("@")
print("Имя пользователя: ", username)
print("Домен: ", domain)

#Использование f-строки
result_email = f"Username: {username}, Domain: {domain}"
print(result_email)