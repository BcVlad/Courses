library(ggplot2)
library(dplyr)
library(lmtest) # ���� ������-������

diamonds_2 <- sample_n(diamonds, 500)  # ����� ������ 500 ����� �� ������ ������

qplot(x = price, y = carat, data = diamonds_2) + 
  geom_smooth(method = lm)
# �������� ���������� ����������� + 
# �������� �������������������� (�������������
# ������������ ������)


fit1 <- lm(carat ~ price, diamonds_2)
coefficients(fit1)
# ������������ ������� � ���, ��� � �������, ��� ���������� �� 1
# ����, ����� ����� ������������� �� 0,0001, �� ��� ������������� �������

# ��������� ������� ������, ����� ��������� �� ��������������������
# � ������� ���������� �����������

plot(fit1)

# �������� ������ ��������������� �������������
# �������� ��������������� ������������� �������� ������
qplot(x = log(price), y = log(carat), data = diamonds_2) + 
  geom_smooth(method = lm)
# �������� ����������, ���� ���������� ������, � �������� �������������������� ����� ������

bptest(lm(price ~ carat, diamonds_2)) # p.value < 0.05
bptest(lm(log(price) ~ log(carat), diamonds_2)) # p.value > 0.05

fit2 <- lm(log(carat) ~ log(price), diamonds_2)
shapiro.test(fit2$residuals)
