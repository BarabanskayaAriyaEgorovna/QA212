'''Задание 1
Напишите программу, которая запрашивает два
целых числа x и y, после чего вычисляет и выводит
значение x в степени y.'''
x = int(input('Введите  целое число'))
y = int(input('Введите степень'))
print(x, 'в степени', y, 'равно', x**y)

'''Задание 2
Подсчитать количество целых чисел в диапазоне от
100 до 999 у которых есть две одинаковые цифры.'''
f = 0
for i in range (100,1000):
    f1 = int(i/100)
    f2 = int((i/100)/10)
    f3 = i%10
    if f1 == f2 or f2 == f3 or f1 == f3:
        f+= 1
print('Количество одинаковых цифр',f)

'''Задание 3
Подсчитать количество целых чисел в диапазоне от
100 до 9999 у которых все цифры разные.'''
count = 0
for num in range (100,1000):
    print(num)
    first_digit = num // 1000
    print(first_digit)
    second_digit = (num//100)%10
    print(second_digit)
    third_digit = (num // 10) % 10
    print(third_digit)
    fourth_digit = num % 10
    print(fourth_digit)
if (num >= 1000 and first_digit != second_digit \
        and first_digit != third_digit and first_digit != fourth_digit \
        and second_digit != third_digit and second_digit != fourth_digit and third_digit!=fourth_digit)\
    or (num < 1000 and second_digit != third_digit \
        and second_digit != fourth_digit and second_digit != fourth_digit ):
    count += 1
print('счетчик', count)

'''Задание 4
Пользователь вводит любое целое число. Необходимо из этого целого числа удалить все цифры 3 и 6 и
вывести обратно на экран. '''
a = int(input('Введите целое число'))
for i in str(a):
    if i == '3' or i == '6':
        continue
print(i, end = '')
