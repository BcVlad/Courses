df2 <- iris

ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram()
ggplot(iris, aes(Sepal.Length)) + geom_histogram(aes(fill = Species))
ggplot(iris, aes(Sepal.Length)) + geom_histogram(aes(col = Species))
ggplot(iris, aes(Sepal.Length)) + geom_histogram(fill = Species)
ggplot(iris, aes(Sepal.Length, col = Species)) + geom_histogram()

ggplot(iris, aes(Sepal.Length)) + geom_histogram(fill = Species)

ggplot(iris, aes(Sepal.Length)) + geom_histogram(aes(col = Species))
ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram()
ggplot(iris, aes(Sepal.Length, col = Species)) + geom_histogram()
ggplot(iris, aes(Sepal.Length)) + geom_histogram(aes(fill = Species))

#fill - ������� (���� ������ �����)
#col - ������� (���� �������)
#�� ��������� ����������� ��������� ������� �� �����

#��� �������� ����, ��� geom_histogram col � fill �������� ��� :
  
 # col :
  
  #ggplot(iris, aes(Sepal.Length)) + geom_histogram(aes(col = Species)) # col - ������� (���� �������)

#��������� ��� ��, ���� �������� ��� :
  
 # ggplot(iris, aes(Sepal.Length, col = Species)) + geom_histogram() # col - ������� (���� �������)

#fill :
  
 # ggplot(iris, aes(Sepal.Length)) + geom_histogram(aes(fill = Species))  # fill - ������� (���� ������ �����)

#��������� ��� ��, ���� �������� ��� :
  
  #ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram()  # fill - ������� (���� ������ �����)