'''Два списка целых заполняются случайными числами.
Необходимо:
1. Сформировать третий список, содержащий элементы
обоих списков;'''
numbsers = [1, 5, 8, 10]
print(numbsers)
numbers1 = [4, 6, 7, 12]
print(numbers1)
numbers2 = numbsers + numbers1
print(numbers2)
''''■ Сформировать третий список, содержащий элементы
обоих списков без повторений;'''
numbers = [1, 3, 5, 7, 9]
numbers1 = [1, 3, 5, 6, 8, 0]
numbers3 = set(numbers + numbers1)   #set - используется для удаления дубликатов
print(numbers3)
'''■ Сформировать третий список, содержащий только
уникальные элементы каждого из списков;'''
numbers = [1, 6, 33, 78, 1, 33, 102]
numbers1 = [1, 5, 6, 33, 78, 33, 103]
numbers3 = numbers + numbers1
print(numbers3)
unique_numbers = (set(numbers3))
print(unique_numbers)
''''■ Сформировать третий список, содержащий только
минимальное и максимальное значение каждого из
списков.'''
numbers = [1, 6, 33, 78, 1, 33, 102]
numbers1 = [1, 5, 6, 33, 78, 33, 103]
numbers3 = max(numbers), min(numbers1), max(numbers1), min(numbers)
print(numbers3)
