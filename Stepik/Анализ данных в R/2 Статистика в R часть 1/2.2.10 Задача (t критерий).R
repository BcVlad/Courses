df1 <- read.csv("lekarstva.csv", sep = ",")
# ������� ��� ��������� ����������
t_stat <- t.test(df1$Pressure_before, df1$Pressure_after, paired = T)$statistic
