#########################################################################################
library(dplyr)
library(ggplot2)
library(vcd)

# ������� ������
titanic <- read.csv("https://stepic.org/media/attachments/course/524/train.csv")
titanic <- na.omit(titanic)
glimpse(titanic)
titanic <- mutate(titanic, 
                  Survived = factor(Survived, labels = c("No", "Yes")), 
                  Pclass = factor(Pclass, labels = c("First", "Second", "Third")), 
                  Sex = factor(Sex, labels = c("Female", "Male")))

# �������� ��������� ������
mosaic(~ Sex + Survived | Pclass, data=titanic) 

# ������ ��� ����������� (Intercept only model)
simple_fit <- glm(Survived ~ 1, titanic, family = "binomial")  # 1 ����������, ��� � ��� ������ ���������. �������� ������
coef(simple_fit)  # ���������� ����������� � ������
table(titanic$Survived)  # ������� ������������� �� �������� � ��������. ���������� ������������� ������
odds <- 290 / 424  # ������������ ����, ��� �������� ������ �������� �������
# ���� ������ 1, ��� ��������, ��� ����������� �������������� ������ ������, ��� ��������������
log(odds) # -0.3798525
exp(-0.3798525) # ��� � ���� �����, ������������ � ������ (290/424)
summary(simple_fit)

