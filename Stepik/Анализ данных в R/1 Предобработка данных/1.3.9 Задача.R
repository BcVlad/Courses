mtcars

mini_mtcars <- mtcars[c(3,7,10,12, length(mtcars[,1])), ]  # 1 �������, ���������� � 3, 7, 10, 12 � ��������� ������ � �� ���� ��������
mini_mtcars <- mtcars[c(3,7,10,12, nrow(mtcars)), ]  # 2 ������� ����� nrow

# ������� � ������ ����� tail:
mini_mtcars <- rbind(mtcars[c(3,7,10,12),], tail(mtcars, 1))