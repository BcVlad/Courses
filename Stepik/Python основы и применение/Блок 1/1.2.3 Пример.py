# a = 1
# b = 2
# c = 3
# x = [1, 2, 3] #
# # print(id(a))
# # print(id(b))
# # print(id(c))
# # print(id(x[0]))
# # print(id(x[1]))
# # print(id(x[2]))
# print(id(x))
# print(id([1, 2, 3]))

x = [1, 2, 3]
print(id(x)) # Два разных объекта не могут обладать одинаковым интерпретатором, они созданы в разное время
print(id([1, 2, 3])) # Два разных объекта не могут обладать одинаковым интерпретатором, они созданы в разное время
print(id([999, 99]))
# x = [1, 2, 3]
# y = x
# print(y is x) # True: y и x ссылаются на один и тот же объект, а значит идентификаторы равны
# print(y is [1, 2, 3]) # False: идентификаторы y и нового списка [1, 2, 3] не могут быть равны
# print()
# x = [1, 2, 3]
# y = x
# y.append(4)
# s = '123'
# t = s
# t = t + '4'
# print(str(x) + '' + s)
# print()
# a = [1, 2, 3]
# b = [1, 2, 3, 4, 5, 6]
# print(a is b)

