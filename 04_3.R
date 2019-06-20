# 엑셀파일
install.packages("readxl")  # 패키지를 설치, 최초 한번만 실행하면 된다.
library(readxl)           #  패키지를 로드, 처음실행시마다 로드해야한다
#require(readxl)         
df_exam <- read_excel("excel_exam.xlsx")
df_exam
View(df_exam)
mean(df_exam$math)
str(df_exam)
sum(df_exam$science)
summary(df_exam)

data() # R의 내장 데이터 셋 목록을 출력
df_exam <- read_excel("excel_exam_novar.xlsx",col_names = F)
df_exam

df_exam <- read_excel("excel_exam_sheet.xlsx", sheet = 3)
df_exam

# rJava 설치
install.packages("rJava")
library(rJava)
Sys.setenv(JAVA_HOME="C:/Program File/Jav/jre1.8.0_211")
# 엑셀파일 저장 하기 
install.packages("xlsx")
require(xlsx)
write.xlsx(df_exam, "my_excel2.xlsx")
df_exam <- read_excel("excel_exam.xlsx")
df_exam


# CSV 파일 읽고 쓰기
# CSV : Comma separated Values

df_csv_exam <- read.csv("csv_exam.csv",stringsAsFactors = FALSE) 
df_csv_exam
str(df_csv_exam)

df_midterm <- data.frame(english =c(90, 80, 60, 70),
                         math =c(50, 60, 100, 20),
                         class =c(1, 1, 2, 2))
write.csv(df_midterm,file = "df_midterm.csv")

df_exam <- read_excel("excel_exam.xlsx")
df_exam

#엑셀실습
df_sales <- read_excel("판매량.xlsx")

#데이터 프레임의 shape 확인
df_sales
str(df_sales)
coffee <- df_sales$커피
coffee
str(coffee)
water <- df_sales$생수
water
str(water)
dim(df_sales)

# 데이터를 분석
summary(df_sales)
sum(df_sales$커피)
mean(df_sales$커피)
sum(df_sales$생수)   # NA
mean(df_sales$생수)  # NA
sd(df_sales$라면)
median(df_sales$커피)
quantile(df_sales$커피)  # 사분위수

df_sales <- read.csv("판매량.csv",stringsAsFactors = F) 
df_sales
str(df_sales)
summary(df_sales)
write.csv(df_sales,file = "df_sales.csv")



# RData 파일 읽고 쓰기 : xxx.rda
df_sales
save(df_sales,file = "df_sales.rda")
rm(df_sales) # df_sales 객체를 삭제
df_sales     # Error

load("df_sales.rda")
df_sales

a <- 10
b <- c(1:5)
a
b
save(a,b,file="scalar_vector.rda")
rm(a)
rm(b)
a    # Error
b    # Error

load("scalar_vector.rda")
a
b
str(iris)
dim(iris)
summary(iris)

# iris 데리터를 csv 파일로 저장
write.csv(iris,file = "iris_R.csv")
