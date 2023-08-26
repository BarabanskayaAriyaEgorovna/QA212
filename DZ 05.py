'''Задание 1
Пользователь вводит с клавиатуры номер дня недели
(1-7). Необходимо вывести на экран названия дня недели. Например, если 1, то на экране надпись понедельник,
2 — вторник и т.д.'''
a = int(input('Введите номер дня недели'))
if a > 0 and a < 2:
    print('понедельник')
elif a > 1 and a < 3:
    print('вторник')
elif a > 2 and a < 4:
    print('среда')
elif a > 3 and a < 5:
    print('четверг')
elif a > 4 and a < 6:
    print('пятница')
elif a > 5 and a < 7:
    print('суббота')
elif a > 6 and a < 8:
    print('воскресенье')
else:print('Ошибка. Выберите число недели')
'''Задание 2
Пользователь вводит с клавиатуры номер месяца
(1-12). Необходимо вывести на экран название месяца.
Например, если 1, то на экране надпись январь, 2 — февраль и т.д.'''
a = int(input('Выберите номер месяца'))
if a > 0 and a < 2:
    print('январь')
elif a > 1 and a < 3:
    print('февраль')
elif a > 2 and a < 4:
    print('март')
elif a > 3 and a < 5:
    print('апрель')
elif a > 4 and a < 6:
    print('май')
elif a > 5 and a < 7:
    print('июнь')
elif a > 6 and a < 8:
    print('июль')
elif a > 7 and a < 9:
    print('август')
elif a > 8 and a < 10:
    print('сентябрь')
elif a > 9 and a < 11:
    print('октябрь')
elif a > 10 and a < 12:
    print('ноябрь')
elif a > 11 and a < 13:
    print('декабрь')
else:print('Ошибка. Выберите число месяца от 1 до 12')
'''Задание 3
Пользователь вводит с клавиатуры число. Если число
больше нуля нужно вывести надпись «Number is positive»,
если меньше нуля «Number is negative», если равно нулю
«Number is equal to zero»'''
a = int(input('Введите число'))
if a == 0:
    print('Number is equal to zero')
elif a < 0:
    print('Number is negative')
elif a > 0:
    print('Number is positive')
'''Задание 4
Пользователь вводит два числа. Определить, равны
ли эти числа, и, если нет, вывести их на экран в порядке
возрастания.'''
a = int(input('Введите первое число'))
b = int(input('Введите второе число'))
if a == b:
    print('равны')
elif a != b:
    print(min(a,b), max(a,b))
