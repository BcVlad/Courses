df <- mtcars
df$vs <- factor(df$vs, labels = c("V", "S"))
df$am <- factor(df$am, labels = c("Auto", "Manual"))

library(psych)  # ����������� �����������

?describe

describe(x = df)  # ����� �������������� ��������� � ������������� �����������, ��� ��� ���������� �� ����� ���� ����������
descr <- describe(x = df[, -c(8, 9)])  # ������ ������������ ����������
