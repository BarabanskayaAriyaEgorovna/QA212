'''Задание 1
Пользователь вводит с клавиатуры два числа (начало и конец диапазона). Требуется проанализировать все
числа в этом диапазоне по следующему правилу: если
число кратно 7, его надо выводить на экран.'''
a = int(input('Введите первое число диапазона'))
b = int(input('Введите второе число диапазона'))
for i in range(a,b+1):
    if i%7 == 0:
        print('число',i, 'кратно 7')

'''Задание 2
Пользователь вводит с клавиатуры два числа (начало и конец диапазона). Требуется проанализировать все
числа в этом диапазоне. Нужно вывести на экран:
1. Все числа диапазона;
2. Все числа диапазона в убывающем порядке;
3. Все числа, кратные 7;
4. Количество чисел, кратных 5.'''
a = int(input('Введите первое число диапазона'))
b = int(input('Введите второе число диапазона'))
for i in range(a,b+1):
    if i in range(a, b + 1):
        print(i)
for i in range(b,a,-1):
    print(i)
for i in range(a, b + 1):
     if i %7 == 0:
         print(i)
for i in range(a, b + 1):
    if i%5 == 0:
        print(i)

'''Задание 3
Пользователь вводит с клавиатуры два числа (начало
и конец диапазона). Требуется проанализировать все числа
в этом диапазоне. Вывод на экран должен проходить по
правилам, указанным ниже.
Если число кратно 3 (делится на 3 без остатка) нужно
вывести слово Fizz. Если число кратно 5 нужно вывести слово Buzz. Если число кратно 3 и 5 нужно вывести
Fizz Buzz. Если число не кратно не 3 и 5 нужно вывести
само число.'''

a = int(input('Введите первое число диапазона'))
b = int(input('Введите второе число диапазона'))
for i in range(a, b + 1):
    if i%3 == 0:
        print('Fizz')
for i in range(a, b + 1):
    if i%5 == 0:
        print('Bizz')
for i in range(a,b +1):
    if not i%3 == 0 and not i%5 == 0:
        print('Fizz Buzz')
for i in range(a,b +1):
    if not i%3 ==0 and not i%5 ==0:
        print(i)
