### ANOVA

library(ggplot2)

DV ~ IV  # ����� ������� ����� ������� ����������� �/� ��������� � ����������� �����������

DV ~ IV1 + IV2  # ��� ����� �������, ��� �� ����������� ���������� ������ 2 ���������

DV ~ IV1:IV2  # : ������������ ��� �������� ��������������, �.�. ����� ������� ����� ���������� �� ������ ������� �� ������ 3 ����������

DV ~ IV1 + IV2 + IV1:IV2  # ������� � �������� ��������� + ��������������

DV ~ IV1 * IV2  # ���������� ������� ����� �������� ����� *. ��� �������� ������� � �������� ��������� + ��������������

DV ~ (IV1 + IV2 + IV3)^2  # �������, ��� ���� 3 ����������� ���������� (3 ����������) � ��� ���������� ��� �������� ������� + �������������� �� 2 ������

DV ~ IV1 + Error(subject/IV1)  # ��������� ��������� ��� ����. �������
