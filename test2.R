df_region_code1 <- read.csv("시군구 지역코드.csv")
df_region_code2 <- read.csv("시도 지역코드.csv")
df_cold_region1 <- read.csv("실제진료정보_감기_시군구.csv")
df_cold_region2 <- read.csv("실제진료정보_감기_시도.csv")
df_eye_region1 <-read.csv("실제진료정보_눈병_시군구.csv")
df_eye_region2 <- read.csv("실제진료정보_눈병_시도.csv")
df_ashtma_region1 <- read.csv("실제진료정보_천식_시군구.csv")
df_ashtma_region2 <-read.csv("실제진료정보_천식_시도.csv")
df_skin_region1 <-read.csv("실제진료정보_피부염_시군구.csv")
df_skin_region2 <-read.csv("실제진료정보_피부염_시도.csv")


View(region_code1)

region_code1 <- df_region_code1 
region_code2 <- df_region_code2 
cold_region1 <- df_cold_region1
cold_region2 <- df_cold_region2
eye_region1 <- df_eye_region1
eye_region2 <- df_eye_region2
ashtma_region1 <- df_ashtma_region1
ashtma_region2 <- df_ashtma_region2
skin_region1 <- df_skin_region1
skin_region2 <- df_skin_region2




  
 

class(cold_region1$시군구지역코드)
table(cold_region1$시군구지역코드)
class(cold_region2$시도지역코드)
table(cold_region2$시도지역코드)
mean(round(cold_region2$발생건수.건.,1))
mean(round(ashtma_region2$발생건수.건.,1))


class(cold_region1$시군구지역코드)
table(cold_region1$시군구지역코드)

cold1 <- cold_region1 %>%
         filter(시군구지역코드) %>%
         group_by(발생건수.건.) %>%
         summarise(mean_occur = mean(발생건수.건.))


summary(cold_region1$시군구지역코드)
str(cold_region1$시군구지역코드)

cold_region1$시군구지역코드 <-ifelse(cold_region1$시군구지역코드 %in% c(43710,49710, 49720) , NA , cold_region1$시군구지역코드)

table(is.na(cold_region1$시군구지역코드))

cold_1 <- cold_region1 %>%
          filter(!is.na(시군구지역코드)) %>%
          group_by(시군구지역코드) %>%
          summarise(mean_occur = mean(발생건수.건.))


cold_1
View(cold_1)
list_rc <- region_code1 %>%
           select(시군구지역코드,시군구명)
           
list_rc
cold_1 <- left_join(cold_1, list_rc, id= "시군구지역코드")

cold_1 %>%
  select(시군구지역코드,시군구명) %>%
  head

ggplot(data= cold_1 , aes(x= 시군구명, y= mean_occur)) + geom_col() + coord_flip()

top_10 <- cold_1%>% 
          filter(!is.na(시군구명)) %>%
          group_by(시군구명) %>%
          arrange(desc(mean_occur)) %>%
          head(10)
top_10

ggplot(data = top_10 , aes( x=시군구명 , y= mean_occur)) + geom_col() 


# as.Date("2018/12/01", %Y%m%d) 날짜포맷주석
# as.Date("2018/12/01", %Y-%m-%d)
# as.Date("12/01/2018)
# as.Date("2018/12/01", "format=%Y/%m/%d")
# as.Date("2018/12/01", %Y%m%d)



cold_daejeon <- cold_1 %>%
  filter(!is.na(시군구지역코드) & 시군구지역코드 %in% c(30110,30140,30170,30200,30230)) %>%
  group_by(시군구명) %>%
  summarise(mean_occur)

            cold_daejeon            
 ggplot(data = cold_daejeon, aes(x=시군구명, y=mean_occur)) +geom_col()

  


 

   