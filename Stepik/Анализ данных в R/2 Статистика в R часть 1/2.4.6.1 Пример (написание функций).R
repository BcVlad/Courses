###############################################################
my_calc <- function(x, y){
  s <- x + y
  return(s)
}

result <- my_calc(10, 15)

s <- 100

my_calc <- function(x, y){
  s <- x + y
  d <- x - y
  return(c(s, d))
}

my_calc(10, 15)

my_calc2 <- function(x, y, z){
  s <- x + y + z
  d <- x - y - z
  return(c(s, d))
}

my_calc2(1, 2, 3)
###############################################################

# ������� �������, ������� �������� ��� �������� NA �� ������� �� �������

distr1 <- rnorm(100)  # ���������� ���������� ������������� ��� ��������� ���������� ����������

hist(distr1)

distr1[1:30] <- NA

distr1[is.na(distr1)] <- mean(distr1, na.rm = T)

my_na_rm <- function(x){
  x[is.na(x)] <- mean(x, na.rm = T)
  return(x)
}

distr2 <- rnorm(100)  # ���������� ���������� ������������� ��� ��������� ���������� ����������

hist(distr2)

distr2[1:30] <- NA

hist(distr2)

distr2 <- my_na_rm(distr2)

hist(distr2)
###############################################################

# ������, ���� ������ ����� �������� �� �� �������� ��������, �� ������� �� ����������

my_na_rm(x=c("2", "3", NA))

# ������������ �������:

my_na_rm <- function(x){
  if (is.numeric(x)){
    x[is.na(x)] <- mean(x, na.rm = T)
    return(x)
  }
  else{
    print("x is not numeric")
  }
}

my_na_rm(x=c("2", "3", NA))

# ������������: ���� �������� = NA, �������� �� �������, � ��������

my_na_rm <- function(x){
  if (is.numeric(x)){
    stat_test <- shapiro.test(x)  # �� ��������� ���������� ����������� ��������
    if (stat_test$p.value > 0.05){
      x[is.na(x)] <- mean(x, na.rm = T)
    }
    else{
      x[is.na(x)] <- median(x, na.rm = T)
    }
    return(x)
    
  }
  else{
    print("x is not numeric")
  }
}

distr3 <- rnorm(1000)
distr3[1:30] <- NA

distr3 <- my_na_rm(distr3)
###############################################################

my_na_rm <- function(x){
  if (is.numeric(x)){
    stat_test <- shapiro.test(x)  # �� ��������� ���������� ����������� ��������
    if (stat_test$p.value > 0.05){
      x[is.na(x)] <- mean(x, na.rm = T)
      print("NA values were replaced with mean")
    }
    else{
      x[is.na(x)] <- median(x, na.rm = T)
      print("NA values were replaced with median")
    }
    return(x)
    
  }
  else{
    print("x is not numeric")
  }
}

d1 <- rnorm(2000)
d2 <- runif(2000)

d1[1:10] <- NA  # ���������� �������������
d2[1:10] <- NA  # ����������� �������������

d1 <- my_na_rm(d1)
head(d1)


d2 <- my_na_rm(d2)
head(d2)


