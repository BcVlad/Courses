# Categorical data

df <- read.csv("grants.csv")

str(df)  # ��������� ������

df$status <- as.factor(df$status)  # 1 ������ ����������� ������ � ���� "������"
levels(df$status) <- c("Not funded", "Funded")  # ��������� ������� ������ �������

df$status <- factor(df$status, labels = c("Not funded", "Funded"))  # 2 ������ ������� ��������� ����������

# ������ ������

set.seed(124)
schtyp <- sample(0:1, 20, replace = TRUE)
schtyp
is.factor(schtyp)  # False
is.numeric(schtyp)  # True
schtyp.f <- factor(schtyp, labels = c("private", "public"))
schtyp.f
## Levels: private public
is.factor(schtyp.f)  # True

# ����������� ��������-������, ������� ses (���������-������������� ������)
ses <- c("low", "middle", "low", "low", "low", "low", "middle", "low", "middle",
         "middle", "middle", "middle", "middle", "high", "high", "low", "middle",
         "middle", "low", "high")

is.factor(ses)  # FALSE
is.character(ses)  # TRUE

# Creating a factor variable ses.f.bad.order based on ses.
ses.f.bad.order <- factor(ses)
is.factor(ses.f.bad.order)  # TRUE
levels(ses.f.bad.order)  ## [1] "high"   "low"    "middle"
#  ������ ���, �� �� ����� ����������� ������ high � low, low � middle, middle � high, �.�. ������ ��������� ��������� ������� �������, �� ��������� ����� ������ (������������, ������) ������ ������� � ��������� � ���� ������� ����� ������� ���� �����, ��� �� ������, �� ������ ��� �� ��������, � ������������, ��� �����������

# ���� ������ ����� levels:
ses.lev <- factor(ses, levels = c("low", "middle", "high"))
ses
