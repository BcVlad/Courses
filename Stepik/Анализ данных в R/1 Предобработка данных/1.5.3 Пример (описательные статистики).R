?mtcars

df <- mtcars

str(df)

# �������, ����� ������������ ���������� ���� ��������� 
# (��� ���������: v-�������� ��� s-��������)

df$vs <- factor(df$vs , labels = c("V", "S"))  # labels - �������� ������� �������
df$am <- factor(df$am , labels = c("Automatic", "Manual"))  # �������������� ��� ������ ������� �������
