icecream <- read.csv("C:/Users/Rusan/Desktop/School/ISQS6337-ScriptingLanguage/Projects/icecream.csv", stringsAsFactors = FALSE)
head(icecream)
tail(icecream)
str(icecream)

Month <- ifelse(icecream$TransDate >= '2014-09-01' & icecream$TransDate <= '2014-09-31',1,
                ifelse(icecream$TransDate >= '2014-10-01' & icecream$TransDate <= '2014-10-31',2,
                       ifelse(icecream$TransDate >= '2014-11-01' & icecream$TransDate <= '2014-11-31',3,
                              ifelse(icecream$TransDate >= '2014-12-01' & icecream$TransDate <= '2014-12-31',4,
                                     ifelse(icecream$TransDate >= '2015-01-01' & icecream$TransDate <= '2015-01-31',5,
                                            ifelse(icecream$TransDate >= '2015-02-01' & icecream$TransDate <= '2015-02-31',6,
                                                   ifelse(icecream$TransDate >= '2015-03-01' & icecream$TransDate <= '2015-03-31',7,
                                                          ifelse(icecream$TransDate >= '2015-04-01' & icecream$TransDate <= '2015-04-31',8,
                                                                 ifelse(icecream$TransDate >= '2015-05-01' & icecream$TransDate <= '2015-05-31',9,
                                                                        ifelse(icecream$TransDate >= '2015-06-01' & icecream$TransDate <= '2015-06-31',10,
                                                                               ifelse(icecream$TransDate >= '2015-07-01' & icecream$TransDate <= '2015-07-31',11,
                                                                                      ifelse(icecream$TransDate >= '2015-08-01' & icecream$TransDate <= '2015-08-31',12,
                                                                                             ifelse(icecream$TransDate >= '2015-09-01' & icecream$TransDate <= '2015-09-31',13,
                                                                                                    ifelse(icecream$TransDate >= '2015-10-01' & icecream$TransDate <= '2015-10-31',14,
                                                                                                           ifelse(icecream$TransDate >= '2015-11-01' & icecream$TransDate <= '2015-11-31',15,
                                                                                                                  ifelse(icecream$TransDate >= '2015-12-01' & icecream$TransDate <= '2015-12-31',16,
                                                                                                                         ifelse(icecream$TransDate >= '2016-01-01' & icecream$TransDate <= '2016-01-31',17,
                                                                                                                                ifelse(icecream$TransDate >= '2016-02-01' & icecream$TransDate <= '2016-02-31',18,
                                                                                                                                       ifelse(icecream$TransDate >= '2016-03-01' & icecream$TransDate <= '2016-03-31',19,
                                                                                                                                              ifelse(icecream$TransDate >= '2016-04-01' & icecream$TransDate <= '2016-04-31',20,
                                                                                                                                                     ifelse(icecream$TransDate >= '2016-05-01' & icecream$TransDate <= '2016-05-31',21,
                                                                                                                                                            ifelse(icecream$TransDate >= '2016-06-01' & icecream$TransDate <= '2016-06-31',22,
                                                                                                                                                                   ifelse(icecream$TransDate >= '2016-07-01' & icecream$TransDate <= '2016-07-31',23,24)))))))))))))))))))))))
summary(Month)

#adding the month variable to icecream data
icecream1 <- data.frame(Month,icecream)
tail(icecream1)
#checking if the appropriate month got added to the data
library(sqldf)
sqldf("select * from icecream1 where TransDate = '2016-07-05'")

#change data frames to table
library(dplyr)
t_icecream <- tbl_df(icecream1)
str(t_icecream)
aggicecream <- sqldf("select Month, LongDes, sum(ItemQuant) As TotItemQty from t_icecream group by month, LongDes")
aggicecream

 #output the file to a csv file
write.csv(aggicecream, file = "C:/Users/Rusan/Desktop/School/ISQS6337-ScriptingLanguage/Projects/1aggicecream.csv")

#read the aggicecream file
aicecream <- read.csv("C:/Users/Rusan/Desktop/School/ISQS6337-ScriptingLanguage/Projects/1aggicecream.csv")

#read distinct icecream products
sqldf("select distinct LongDes from aicecream where LongDes like 'BLUE BELL%' OR LongDes like 'BLUEBELL%' OR LongDes like 'BBELL%' order by LongDes")
head(aicecream)

#seperate the blue bell and other ice cream brands
aggBrand <- sqldf("select month, LongDes, TotItemQty, 
      case
      when LongDes like 'BLUE BELL%' then 'BLUE BELL'
      when LongDes like 'BLUEBELL%' then 'BLUE BELL'
      when LongDes like 'BBELL%' then 'BLUE BELL'
      else 'OTHER'
      end Brand
      from aicecream Order by month")
tail(aggBrand)

#split aggbrand data into two files
bluebell <- sqldf("select month, LongDes, TotItemQty, Brand from aggBrand where BRAND = 'BLUE BELL'")
bluebell
other <- sqldf("select month, LongDes, TotItemQty, Brand from aggBrand where BRAND = 'OTHER'")
other
write.csv(bluebell, file = "C:/Users/Rusan/Desktop/School/ISQS6337-ScriptingLanguage/Projects/2aggbluebell.csv")
write.csv(other, file = "C:/Users/Rusan/Desktop/School/ISQS6337-ScriptingLanguage/Projects/2aggother.csv")

#group by aggbrand data by brand and months
totBrand <- sqldf("select month, Brand, sum(TotItemQty) As TotItemQty from aggBrand
                  group by month, Brand")
totBrand

#output totBrand data to totBrand.csv file
write.csv(totBrand, file = "C:/Users/Rusan/Desktop/School/ISQS6337-ScriptingLanguage/Projects/3totBrand.csv")

#Visualization
#Scatter plot to show the distribution of the entire data
windows()
library(plotrix)
library(ggplot2)
scatteredPlot <- ggplot(aggBrand, aes(x=Month, y=TotItemQty))
scatteredPlot + geom_point(aes(color=Brand))

#mosaic plot
library(vcd)
windows()
mosaicplot(table(aggBrand$Month,aggBrand$Brand),main="Mosaic plot")
