'''Задание 1
Пользователь вводит с клавиатуры три числа. В зависимости от выбора пользователя программа выводит
на экран сумму трёх чисел или произведение трёх чисел.'''
a = int(input('Введите первое числа'))
b = int(input('Введите второе число'))
c = int(input('Введите третье число'))
d = input('Выберите действие: x - сложение, y - произведение')
x1 = a+b+c
y1 = a*b*c
if d == 'x':
    print('сложение',x1)
elif d == 'y':
    print('произведение', y1)
else:print('Ошибка! Выберите действие')

'''Задание 2
Пользователь вводит с клавиатуры три числа. В зависимости от выбора пользователя программа выводит
на экран максимум из трёх, минимум из трёх или среднеарифметическое трёх чисел.'''
a = int(input('Введите первое число'))
b = int(input('Введите второе число'))
c = int(input('Введите третье число'))
d = input('Выберите действие x - максимум,  y - минимум, n - среднеарифметическое')
if d == 'x':
    print(max(a,b,c))
elif d == 'y':
    print(min(a,b,c))
elif d == 'n':
    print((a+b+c)/3)
else:print('Ошибка. Выберите действие')
'''Задание 3
Пользователь вводит с клавиатуры количество метров. В зависимости от выбора пользователя программа
переводит метры в мили, дюймы или ярды.'''
a = int(input('Введите количество метров'))
b = input('Выберите действие перевода метра в x-в мили, y - в дюймах')
a1 = (1000 -a) * 0.62 #метр в мили
a2 = (a * 1.094)
if b == 'x':
    print('метр в милях равна', a1)
elif b == 'y':
    print('метр в дюймах равна', a2)
else:print('Ошибка. Выберите действие')