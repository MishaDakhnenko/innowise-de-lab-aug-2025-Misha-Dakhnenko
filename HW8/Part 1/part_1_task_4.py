#Начальный список
words = ["hello", "world", "python", "code"] 

#Список длин всех слов List Comprehensions
lengths = [len(word) for word in words]
print("Длины слов:", lengths)

#Создание списка слов длиннее 4 символов
long_words = [word for word in words if len(word) > 4]
print("Слова длиннее 4 символов:", long_words)

#Создание словаря
word_dict = {word: len(word) for word in words}
print("Словарь слово-длина:", word_dict)