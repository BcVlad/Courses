df <- mtcars
df$vs <- factor(df$vs, labels = c("V", "S"))
df$am <- factor(df$am, labels = c("Auto", "Manual"))

library(psych)  # ����������� �����������

?describe

describe(x = df)  # ����� �������������� ��������� � ������������� �����������, ��� ��� ���������� �� ����� ���� ����������
descr <- describe(x = df[, -c(8, 9)])  # ������ ������������ ����������

?describeBy()  # ������������ ����������, ����������� �� �������

descr2 <- describeBy(x = df[, -c(8, 9)], group = df$vs)  # ������������ ������������ ���������� ��� ����� (�� ���� ���������)
descr2$V  # ������� ������ ������ ��� V-��������� ���������
descr2$S  # ������� ������ ������ ��� S-��������� ���������


descr2 <- describeBy(x = df[, -c(8, 9)], group = df$vs, mat = T, digits = 1)  # ������������� � dataframe � ����� ������ ����� �������

descr3 <- describeBy(x = df[, -c(8, 9)], group = df$vs, mat = T, digits = 1, fast = T)  # �� ��������� � ���������� ��������� �������������� ������� ����

describeBy(df$qsec, group = list(df$vs, df$am), mat = T, digits = 1,
           fast = T)  # ����� ������� ���������� ����� �� ���� ���������� (�� ���� ��������� � ������� �������)
