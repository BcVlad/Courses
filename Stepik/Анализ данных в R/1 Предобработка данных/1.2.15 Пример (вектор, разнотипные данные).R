age <- c(16, 18, 22, 27)
is_married <- c(F, F, T, T)
name <- c("Olga", "Maria", "Nastya", "Polina")


data <- list(age, is_married, name)  # ��������� ��������� ������ �� ��������
data

# ������� ����������
data[[1]]  # ��������� ������� (������ ������)

data[[2]]  # ��������� ������� (������ ������)

data[[1]][1]  # ������� 1 ������� 1 �������

data[[2]][3]  # ������� 3 ������� 2 ����� (�������)

data[[3]][2:3]

# �������� ������ � ������� DataFrame
df <- data.frame(Name = name, Age = age, 
                 Is_married = is_married)  # ������� ������� � 4 ��������� � 3 ���������
typeof(df)  # ��� ���������� df - list
