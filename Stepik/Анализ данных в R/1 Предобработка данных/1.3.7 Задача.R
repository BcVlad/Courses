mtcars
gear <- mtcars$gear %% 2 == 0 * 1
mtcars$even_gear <- gear * 1

# ����������� ������� � ���� �������:
mtcars$even_gear <- 1-mtcars$gear%%2

# ������� ����� as.numeric:
mtcars$even_gear <- as.numeric(mtcars$gear%%2 == 0)  # ����������� ���������� ��� ���������� �������� � �����
