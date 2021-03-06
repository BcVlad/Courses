######################################################
# regression diagnostics

data(swiss)
str(swiss)


# ��������� ����������� ����� ����� �����������
pairs(swiss)  # ��������� ���� �������, ���� ������� � �����������
# ��������� �� ����������� Examination � Education

library(ggplot2)

# �������� ��������� �����������
ggplot(swiss, aes(x = Examination, y = Education)) + 
  geom_point() + 
  theme(axis.text = element_text(size=25),
        axis.title = element_text(size = 25, face = "bold"))
