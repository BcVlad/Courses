ToothGrowth
?ToothGrowth
str(ToothGrowth)

df1 <- ToothGrowth
mean_len <- mean(df1$len)  # 18,81

shapiro.test(x = df1$len)  # � �������� ��������� ����������� ������ ��������
# p-value > 0.05, ������ ������������� �� ���������� �� �����������
shapiro.test(x = df1$len[(df1$supp == "OJ") & (df1$dose == 0.5)])  # p-value > 0.05, ������ ������������� �� ���������� �� �����������
shapiro.test(x = df1$len[(df1$supp == "VC") & (df1$dose == 2)])  # p-value > 0.05, ������ ������������� ���������� �� �����������

hist(df1$len)
hist(df1$len[(df1$supp == "OJ") & (df1$dose == 0.5)])
hist(df1$len[(df1$supp == "VC") & (df1$dose == 2)])


t_stat <- t.test(df1$len[(df1$supp == "OJ") & (df1$dose == 0.5)], df1$len[(df1$supp == "VC") & (df1$dose == 2)])$statistic

# ����������� ������� ���� subset
correct_data <- subset(ToothGrowth, supp=='OJ' & dose==0.5 | supp=='VC' & dose==2)    
t_stat <- t.test(len ~ supp, correct_data)$statistic
