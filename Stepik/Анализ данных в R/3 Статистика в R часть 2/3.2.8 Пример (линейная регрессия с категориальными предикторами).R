
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


