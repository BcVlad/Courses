library(ggplot2)
library(ggrepel) # ��� ����������� ������� ����� �� �������

x <- runif(10, 1.0,10.0) #������� rnorm, ����� ������ � ����������� ���������� 
y <- runif(10, 1.0,10.0) #���� x � � ��������� �������
test_data <- data.frame(x, y)
rownames(test_data) <- LETTERS[1:10] #���� ��������� � �������� ����� ���� �������� �������� �����, �� ��� ����������� � ������ dist, � ������ � hclust � � plot

ggplot(test_data, aes(x, y, label = rownames(test_data)))+
  geom_point()+
  geom_text_repel()+
  scale_x_continuous(breaks = 1:10)+ #��� ����������� ���� ����
  scale_y_continuous(breaks = 1:10)

d = dist(test_data)
fit <- hclust(d, method = "single")
plot(fit) #������� ������ �� ��������������
rect.hclust(fit, 2) # ������� �������� ����� ���������, ������ ����� 2


##############################################
library(ape)
set.seed(222)
tr <- rtree(20, tip.label = c("B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U")) 
#����� ������
plot.phylo(tr) 
#������ ������ 
plot.phylo(tr, use.edge.length=FALSE)