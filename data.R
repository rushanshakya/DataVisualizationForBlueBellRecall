setwd('C:/Users/oishe_000/Desktop/ttu/Fall 17/ScriptingLanguages/course_project')
icecream <- read.csv('aggicecream.csv', stringsAsFactors = FALSE)
head(icecream)
library(sqldf)
str(icecream)

unique(icecream$LongDes)

Bluebell <- sqldf("select * from icecream where LongDes LIKE '%BB %' or LongDes LIKE '%BLUEBELL%' or LongDes LIKE '%BLUE BELL%'")
#icecream_Subset <- grep(icecream$LongDes, "/BB|BLUEBELL|BLUE BELL/" , 'r')
#head(icecream_Subset)
head(Bluebell)

notBluebell <- sqldf("select * from icecream where LongDes not LIKE '%BB %' or LongDes not LIKE '%BLUEBELL%' or LongDes not LIKE '%BLUE BELL%'")
#icecream_Subset <- grep(icecream$LongDes, "/BB|BLUEBELL|BLUE BELL/" , 'r')
#head(icecream_Subset)
head(notBluebell)

write.csv(Bluebell, file = 'bluebell.csv')
write.csv(notBluebell, file = 'notbluebell.csv')