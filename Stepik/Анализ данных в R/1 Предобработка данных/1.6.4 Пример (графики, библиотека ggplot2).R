df <- mtcars
# �������, ����� ������������ ���������� ���� ��������� 
# (��� ���������: v-�������� ��� s-��������)
df$vs <- factor(df$vs , labels = c("V", "S"))  # labels - �������� ������� �������
df$am <- factor(df$am , labels = c("Automatic", "Manual"))  # �������������� ��� ������ ������� �������

library(ggplot2)

ggplot(df, aes(x = am, y = hp))+
  geom_boxplot(aes(group=am))

ggplot(df, aes(x = mpg, y = hp, col=vs))+
  geom_point(size = 3)  # �������� ������ �����

ggplot(df, aes(x = mpg, y = hp, col=vs, size = qsec))+  # ������ ������ ����� ������� �� ������� �������
  geom_point()

# � ������� �� ������� ������� �� ����� ��������� ���������� ���������� �������� � ���� ���������
my_plot <- ggplot(df, aes(x = mpg, y = hp, col=vs, size = qsec))+  # ������ ������ ����� ������� �� ������� �������
  geom_point()

my_plot2 <- ggplot(df, aes(x = am, y = hp, col=vs))  # ����� ������� ���������
my_plot2 + geom_boxplot()
