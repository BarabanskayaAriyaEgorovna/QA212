'''Задание 1.
Пользователь вводит с клавиатуры число. Необходимо проверить его на четность и нечетность.
Если число четное требуется вывести на экран число и надпись Even
number. Если число нечетное выведите на экран число и
надпись Odd number.'''

a = int(input('Введите число'))
if a%2==0:
    print (a,'Even number')
else: print (a, 'Odd number')

'''Задание 2
Пользователь вводит с клавиатуры число. Необходимо проверить его на кратность 7. Если число кратно
требуется вывести на экран число и надпись Number is
multiple 7. Если число не кратно выведите на экран число
и надпись Number is not multiple 7. '''

a = int(input('Введите число'))
if a%7==0:
    print(a,'Number is multiple 7')
else:print(a,'Number is not multiple 7')

'''Задание 3
Пользователь вводит с клавиатуры два числа. Необходимо найти максимум из двух чисел и показать его на
экран.'''

a = int(input('Введите число'))
b = int(input('Введите число'))
if a>b:
    print (a)
else:print(b)

'''Задание 4
Пользователь вводит с клавиатуры два числа. Необходимо найти минимум из двух чисел и показать его на
экран.'''

a = int(input('Введите число'))
b = int(input('Введите число'))
if a<b:
    print (a)
else:print(b)

'''Задание 5
Пользователь вводит с клавиатуры два числа. В зависимости от выбора пользователя нужно показать сумму
двух чисел, разницу двух чисел, среднеарифметическое
или произведение двух чисел.'''

a = int(input('Введите число'))
b = int(input('Введите число'))
c=input('Выберите действие x - это *,y - это -,z -это +, f - среднеарифметичеcкое')
if c == 'x':
  print('произведение чисел', a*b)
elif c == 'y':
  print('разница двух чисел', a-b)
elif c == 'z':
  print('сумма двух чисел', a+b)
elif c == 'f':
  print('среднеарифметическое', (a+b)/2)
else:print('Выберите действие')



'''Задание 1
Пользователь вводит с клавиатуры время в секундах, прошедшее с начала дня. В зависимости от выбора
пользователя посчитать, сколько часов, минут и секунд
осталось до полуночи.'''
a = int(input('Введите время в секундах, прошедшее с начала дня'))
b = input('Выберите действие x -часы, y-минут, z-секунда')
hours = 24
minutes = 1440
seconds = 86400
x =(a // 3600)
x1 = (x-hours)
y = (a // 60)
y1 = (y-minutes)
z1 = (a-seconds)
if b == 'x':
    print ('осталось часов',x1)
elif b == 'y':
    print('осталось минут', y1)
elif b == 'z':
    print('осталось секунд', z1)
else: print('Выберите действие')


'''Задание 2
Пользователь вводит с клавиатуры диаметр окружности. В зависимости от выбора пользователя посчитать
площадь или периметр окружности.'''

a = int(input('Введите диаметр окружности'))
b = input('Выберите действие  x = посчитать площадь, y = периметр окружности')
x1 = a * 3,14
y1 = 3,14 * 100
if b == 'x':
    print('Площадь диаметра =', x1)
elif b == 'y':
    print('периметр окружности =', y1)
else:print('Выберите действие')

'''Задание 3
Пользователь вводит с клавиатуры стоимость одной
игровой приставки, их количество и процент скидки.
В зависимости от выбора пользователя посчитать общую
сумму заказа или стоимость одной приставки с учетом
скидки.'''

a = int(input('Стоимость одной приставки'))
b = int(input('Укажите количество игровой приставки'))
c = int(input('Процент скидки'))
d = input ('Выберите действие a - стоимость приставки, b - с скидкой')

if d == 'a':
    print('Сумма заказа', a*b-(a*b*c/100))
elif d == 'b':
    print('Приставка с учетом скидки', a*b-(a*b*c/100))
else:
    print('неправильное действие')

'''Задание 4
Пользователь вводит с клавиатуры размер файла
в гигабайтах и скорость интернет-соединения в битах в секунду. В зависимости от выбора пользователя посчитать,
за сколько часов или минут, или секунд скачается файл.'''
a = int(input('Введите размер файла в гигабайтах'))
b = int(input('Введите скорость интернет-соединения в битах в секундах'))
c = input('Выберите действие: x - за сколько часов посчитается скачивание файла, y - за сколько минут, e - за сколько секунд')
#1 байт = 8 бит
#1 кб = 1024 байт
#1 мб = 1024 кб
#1 гб = 1024 мб
hours = 24
minutes = 1440
seconds = 3600
a1 = (a * 1024*8)
x = (a // hours)
y = (a/60)-(hours*60)
e = (a - (minutes*60)-(hours*seconds))
if c == 'x':
    print ('осталось часов',x)
elif c == 'y':
    print('осталось минут', y)
elif c == 'e':
    print('осталось секунд', e)
else: print('Выберите действие')

'''Задание 5
Пользователь с клавиатуры вводит количество часов.
Если полученное значение находится в диапазоне от 0 до
6 нужно вывести надпись Good Night, если в диапазоне от
6 до 13 Good Morning, если в диапазоне от 13 до 17 Good
Day, если в диапазоне от 17 до 0 Good Evening. Верхняя
граница диапазона не включается. Например, число 6
относится к 6 до 13'''
a = int(input('Введите количество часов'))
if a > 0 and a < 6:
    print('Good Night')
if a > 5 and a < 13:
        print('Good Morning')
if a > 13 and a < 18:
    print('Good Day')
elif a>=0 and a>17:
        print('Good Evening')
else:print('Неправильно. Введите количество часов')













