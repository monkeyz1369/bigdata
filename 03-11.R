# 03-1 .R 변수
# Date : 2019-06-10
# Author: 홍길동
# [1] 스칼라
# (1) 숫자
#문자로 시작
a  <- 1
a
rm(list=ls()) #사용된 변수 객체를 모두 삭제
gc() #garbage collection 
#사용되지 않는 변수들의 메모리를 모두 해체하여 사용가능하게 만듦
#할당 연산자 <-가 =보다 우선 순위가 높다
a <- ( b = 5)
a <- b
a
a <- b = 5
a = b <- 5 # OK
a          # [1] 5

#문자와 숫자
a1 <- 10
a1
차
#.으로 시작
.x <- 30
.x

#숫자로 시작할수없다
1a <- 40
1a
.2 <- 10 #오류

a <- 10  #스칼라 , 0차원
# (2) 문자열(string)
str1 <- "a"
str1
str2 <- "abcd"
str2
str3 <- "문자열"
str3
str4 <- 'hello string!!'
str4
#',"구별이 없음 
# (3) NA 결측치, Not Available
var3 <- NA #결측치
var3
var3 + 10
# (4) NULL
var4 <- NULL
var4
var4 + 10

# (5) 진리값(Logical) : True , False
a <- TRUE
a
b <- FALSE
b
c <- a | b  #OR 연산
c
d <- a & b  #AND 연산
d

#(6) 요인(Factor)
 grade <- factor("A",c("A","B","C"))
 grade
 sex <- factor("m",c("male","female"))
 sex
 nlevels(sex)
 levels(grade)
 
 
 
# [2] 벡터 : 순서 , indexing
# combine : c()
 var1 <- c(1,2,3,4,5,6,7)  # 벡터 , 1차원
 var1
 var1*2 # 벡터  연산
 var1+1
 
 
 var2 <- c(1:7) 
 var2
 var2 <- seq(1,7)  # sequence
 var2 
 var2 <- seq(1,10, by = 2)
 var2 
 
 var3 <- c("a",2,"c",4,"d")
 var3
 var3 <- c(2,4,"a")#문자열로 통일하여 변환"2","ㅊ","c","d"
 var3[3]
 
 var2 <- c(1:7) 
 var2
 # 벡터의 요소접근
 var2[1] # 요소 한개만 접근
 var2[2]
 var2[7]
 var2[c(1,3)] # 두개 이상을 접근,1,3
 var3[c(2,5)]
 var2[1:3] #[1] 1 2 3
 var2[-1] #[1] 2 3 4 5 6 7
 var3[-3] # [1] "a" "2" "4" "d"
 
 var4 <- c(10,20,30)
 names(var4) <- c("국어","영어","수학")
 var4
 
 
 
 
 var3 <- NA # 결측치
 var3 
 var3*10
 var3 + 10 
 
 var4 <- NULL #결측치
 var4 
 # [3] 행렬 : 2차원  m(행)*n(열)
 #matix(c(,,,),nrow=)
 matrix(c(1,2,3,4,5,6,7,8,9), nrow=3)
#     [,1] [,2] [,3]
#[1,]    1    4    7
#[2,]    2    5    8
#[3,]    3    6    9
 
 a <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),nrow=3)
 a
#     [,1] [,2] [,3] [,4]
#[1,]    1    4    7   10
#[2,]    2    5    8   11
#[3,]    3    6    9   12
  
 
 a <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),ncol=3)
 a
#     [,1] [,2] [,3]
#[1,]    1    5    9
#[2,]    2    6   10
#[3,]    3    7   11
#[4,]    4    8   12

 a <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),ncol=3,byrow=T)
 a
#      [,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6
#[3,]    7    8    9
#[4,]   10   11   12
 
 a <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),nrow=2)
 a
 a <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),nrow=1)
 a
 a <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),nrow=12)
 a
 
 # 행렬의 요소 접근
 # a[행번호,열번호]
 a <- matrix(c(1,2,3,4,5,6,7,8,9),nrow=3)
 a
 a[1,1] #행렬의 요소 하나만 접근
 # a[행시작번호:행끝번호,열시작번호:열끝번호]
 a[1,2]
 a[3,3]
 a[2,3]
 a[1:2,1:2]
 b <- a[2:3,2:3]
 b
#     [,1] [,2]
#[1,]    5    6
#[2,]    8    9
 a[2:3, ] #인덱스를 생략하면 전체를 접근
#      [,1] [,2] [,3]
#[1,]    2    5    8
#[2,]    3    6    9
 a[,1:2]
#     [,1] [,2]
#[1,]    1    4
#[2,]    2    5
#[3,]    3    6
 a[,]
 a[-3,-1] #3헹,1열을 제외
 a[-1:-2,-1:-2] # 범위로 제외 
 
 #행렬의 연산
 x <- matrix(c(1,2,3,4,5,6,7,8,9),nrow=3)
 x + x 
#       [,1] [,2] [,3]
# [1,]    2    8   14
# [2,]    4   10   16
# [3,]    6   12   18
 x-x
#       [,1] [,2] [,3]
# [1,]    0    0    0
# [2,]    0    0    0
# [3,]    0    0    0
 x * x
#       [,1] [,2] [,3]
# [1,]    1   16   49
# [2,]    4   25   64
# [3,]    9   36   81
 x / x
#       [,1] [,2] [,3]
# [1,]    1    1    1
# [2,]    1    1    1
# [3,]    1    1    1
 x %*% x  # 행렬곱
 x %*% x          
#     [,1] [,2] [,3]
#[1,]   30   66  102
#[2,]   36   81  126
#[3,]   42   96  150
 
# 역헹렬 : solve(행렬)
x <- matrix(c(1,2,3,4),ncol=2)
x
solve(x)
#     [,1] [,2]
#[1,]   -2  1.5
#[2,]    1 -0.5

# 전치 행렬 : 행과 열을 서로 바꾼 행렬
# transpose : t(행렬)
x <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3)
x
#     [,1] [,2] [,3]
#[1,]    1    4    7
#[2,]    2    5    8
#[3,]    3    6    9
x_t <- t(x)
x_t
#     [,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6
#[3,]    7    8    9
ncol(x)  #행렬의 열의 갯수
nrow(x)  #행렬의 행의 갯수

# [4] 데이터 프레임
# data.frame(x=c(1,2,3,4,5),b=c(2,4,6,8,10))
 d <- data.frame(a=c(1,2,3,4,5,6,7),
                 b=c(2,4,6,8,10,11,12),
                 c=c("a","b","c","d","e","f","g"))
 d 
 # 데이터프레임의 요소 접근  :
 # (데이터프레임)$(열이름)
 d$a 
 d$b 
 d$c 

 # d[행번호,열번호]
 d[1,1]  #1 
 d[1,3]  #a
 d[1:3,1:2]
 d[,1:2] 
 d[-1,-1] 
 d[c(1,3),c(1,3)] 
 
 str(d)  # 데이터 프레임의 구조(structure)를 출력  str()
 head(d) # 앞에서 6개 행만 출력
 
 # [5] 배열(array) : n차원 행렬이다
 a <- matrix(c(1:12), ncol=4)
 a 
 # 2차원 array는  matrix과 동일하다
 a < - array(1:12,dim = c(3,4))
 a
 # 3차원 array
 # dim = c(행,열,면), 면의 갯수는 matrix의 갯수
 b <- matrix(c(1:12), ncol=4)
 b
 b <- array(1:12,dim = c(2,2,3))
 b 
 b[1,1,1] # [1] 1
 b[1,2,3] # [1] 11
 
 b[,-1,2:3]
 
 # [6] 리스트
 # list(key=value,key=value,.....)
 x <- list(name="kim",height=170,weight=60,score=c(10,20,30))
 x
 
 x$name
 x$height
 x$weight
 x$score
 
 x[1]
 x[2]
 x[3]
 x[4]
 x[[1]]
 
 # 제어문 : IF, FoR, WHILE문
 # [1] IF문
 # if (조건){ 문장1 }
 # else { 문장2 }
 cond <- TRUE
 if(cond) {
   print('TURE')
   print('You Win')
 } else {
   print('FALSE')
   print('You Lost!!')
 }
 
 cond <- 10
 if(cond>0) {
   print('TURE')
   print('You Win')
 } else {
   print('FALSE')
   print('You Lost!!')
 }
 
 # [2] FOR문 : 반복문
 for (i in 1:10) {
   print(i)
 }
 a <- c(1:100) 
 sum(a) 

 
 # 1부터 100까지 합을 for문을 사용하여 구하세요,변수 사용은 자유
 result <- 0
 mean <- 0
 for (i in 1:100) {
  result <- result + i 
 }
 print(result) # 5050
 mean <- result/100
 print(mean)
 
 # WHILE : 조건을 사용한 무한 반복 
 cond <- TRUE
 i <- 0
 while(i<101) {
  print(i)
   i<- i + 1
 }
 print(i) #1+.....+100
 # while(TRUE) {} => 무한 루프
 
 # 함수
 a <- 10
 b <- 20
 c <- a + b 
 c

 a <- 50
 b <- 60
 c <- a + b
 c
 # 반복적인 코드는 비효율적 ,재사용 목적
 # 함수명 <- function(인자1,인자2,..)
 # {    문장...
 #       return(반환값)      }
 add <- function(a,b)
 {
  c = a + b
  return(c)
 
  }
 
 d <- add(10,20) # 함수를 호출
 d  
 e <- add(50,60) 
 e   
  
 # 예제 : 1 + 10,2 + 20, 3 + 30,.........,100 + 1000
 for(i in 1:100) {
  result <- add(i,i*10) 
  print(result)  
 }

 sum_func <- function(a)
 {
  print(a) 
  len <- length(a)
  # a[1]
  b <- 0
  for (i in 1:len){
    b <- b + a[i]
  }
  return(b)
 }
 sum(c(1:10))
 sum_func(c(1,2,3,4,5))
  