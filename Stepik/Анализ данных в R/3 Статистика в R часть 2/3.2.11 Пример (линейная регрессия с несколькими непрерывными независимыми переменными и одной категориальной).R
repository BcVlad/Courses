
###############################################################
# ���������� �������� ��������� � ��������������� ������������

# cathegorial predictors

hist(swiss$Catholic, col = 'red')

# �������� �������������� ����������

swiss$religious <- ifelse(swiss$Catholic > 60, 'Lots', 'Few') # ���� ����� ��������� > 60%, �� � ���������� ����������� �������� Lots
swiss$religious <- as.factor(swiss$religious)
fit3 <- lm(Fertility ~ Examination + religious, data = swiss)
summary(fit3)  # intercept �������� � ���� ������� ������������� �������� �����������
# ��� ���������, ��� � ��� ���� ��������� (religious = few). � ����������� ���������� (��������) = 0

# �������� ������, ������� �������� �������������� �������������� � ����������� ���������� (������ ������ ������ ��������������)
fit4 <- lm(Fertility ~ Examination * religious, data = swiss)
summary(fit4) # � ���������� ��-�������� �������� �������� ��� religious few
# religiousLots �� ������
# �� �������������� �������� �� ������ ��������� - ������ � ���������

###############################################################

# � ��������� ����� �� ���������� �������, �������������� �����������, 
# ������� ��������� ����������� ������������� ��������� �� ������� ������� 
# ���������� Examination, religious � �� �������������� �� ����������� (Fertility).

# ��� ������ �������� ������� ��������� �����������. 
library(ggplot2)

ggplot(swiss, aes(x = Examination, y = Fertility)) + 
  geom_point() 

# ����� ������� ����� ������.

ggplot(swiss, aes(x = Examination, y = Fertility)) + 
  geom_point() + 
  geom_smooth(method = 'lm')

# ��� �����, ���� �� ������� ���������� ������������� � ���� �����

ggplot(swiss, aes(x = Examination, y = Fertility, col = religious)) + 
  geom_point()  # �����, ��� ����� ������������ �� ���� ������ �������

ggplot(swiss, aes(x = Examination, y = Fertility, col = religious)) + 
  geom_point() + 
  geom_smooth()


ggplot(swiss, aes(x = Examination, y = Fertility, col = religious)) + 
  geom_point() + 
  geom_smooth(method = 'lm')
###############################################################

fit5 <- lm(Fertility ~ religious*Infant.Mortality*Examination, data = swiss)
summary(fit5)
