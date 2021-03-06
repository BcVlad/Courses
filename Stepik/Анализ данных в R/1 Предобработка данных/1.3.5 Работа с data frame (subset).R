?read.table
?read.csv

mydata <- read.csv('evals.csv', stringsAsFactors=TRUE)
mydata


head(mydata, 3)  #  ���������� ������ 3 ������
tail(mydata)  # ���������� ��������� 6 �����

View(mydata)  # ��������

str(mydata)  # ����������� ���������

summary(mydata)  # �������� �������������� ���������� �� ����. ����������
a <- names(mydata)  # �������� ������� (����������) - ������ ��������. �������� �������� � ���������

# Variables

b <- mydata$score  # ������� ������ �������� ����������
mean(mydata$score)  # ������� ��� ��������� ��������
summary(mydata$score)  # ���������� � �������� ������
mydata$ten_point_scale <- mydata$score * 2  # �������� ����� ������� � mydata �� ���������� *2

summary(mydata$ten_point_scale)  # ����� ������������ ���������� ����� � 2 ���� ������

mydata$new_varible <- 0  # ����� ������� � �������� ����������
mydata$number <- 1:nrow(mydata)  # ������ ���� ������� ������ � 1 �� ���������
summary(mydata$number)


nrow(mydata)  # ���������� ���������� ������� � mydata
ncol(mydata)  # ���������� ��������, ������� � mydata

#  Subsetting

mydata$score[1:10]

mydata[1,1]  # ������� �������� ������� �������, ������ ������
mydata[c(2,193,225),1]  # �������� ����� 2,193,225 � 1 ������� (score)
mydata[101:200,1]  # �������� 101:200 � 1 ������� (score)
mydata[5,]  # ��� �������� 5 ������
mydata[,1]  # ��� �������� 1 �������
mydata[,1] == mydata$score

mydata[,2:5]  # ��� ������� �� 2-5 ��������
head(mydata[,2:5])  # ������ 6 ������� �� 2-5 ��������

##


# Subsetting with condition

mydata$gender
mydata$gender == 'female'
head(mydata[mydata$gender == 'female',1:3])  # �� ���� ����������� ������� ����� �������� ������ ����� �������� 1-3 ��������� ��� female


head(subset(mydata, gender == 'female'))  # ������� ������ ��� female, ������� ��� subset
head(subset(mydata, score > 3.5))  # ��������� dataframe, ����� score ��� ���� 3,5

# rbind, cbind

mydata2 <- subset(mydata, gender == 'female')
mydata3 <- subset(mydata, gender == 'male')
mydata4 <- rbind(mydata2, mydata3)  # ��������� 2 dataframe ���������� ������ ������


mydata5 <- mydata[,1:10]  # ������ 10 ����������
mydata6 <- mydata[,11:24]  # � 11 �� 24 ����������
mydata7 <- cbind(mydata5, mydata6)  # ��������� dataframe �� ��������
