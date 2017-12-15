library(googleVis)
setwd('C:/Users/oishe_000/Desktop/ttu/Fall 17/ScriptingLanguages/course_project')
data <- read.csv('2aggbluebell.csv')
head(data)
str(data)

Bubble <- gvisBubbleChart(data, idvar="LongDes", 
                          xvar="Month", yvar="TotItemQty",
                          colorvar="LongDes", sizevar="TotItemQty",
                          options=list(vAxis="{title:'Sales Quantity'}", 
                                       hAxis="{title:'Months over 2 years'}",
                                       width=1300, height=750, 
                                       title="Sales of BlueBell Items over 24 Months Period",
                                       bubble="{textStyle:{color: 'none', fontSize: 10}}"), chartid="bluebell")
plot(Bubble)

others <- read.csv('2aggother.csv')
head(others)
str(others)

Bubble_others <- gvisBubbleChart(others, idvar="LongDes", 
                              xvar="Month", yvar="TotItemQty",
                              colorvar="LongDes", sizevar="TotItemQty",
                              options=list(vAxis="{title:'Sales Quantity'}", 
                                           hAxis="{title:'Months over 2 years'}",
                                           width=1300, height=750, 
                                           title="Sales of All Brands Individually over 24 Months Period",
                                           bubble="{textStyle:{color: 'none', fontSize: 10}}"), chartid="others")
plot(Bubble_others)



all <- read.csv('3totBrand.csv')
head(all)
str(all)

Bubble_all <- gvisBubbleChart(all, idvar="Brand", 
                          xvar="Month", yvar="TotItemQty",
                          colorvar="Brand", sizevar="TotItemQty",
                          options=list(vAxis="{title:'Sales Quantity'}", 
                                       hAxis="{title:'Months over 2 years'}",
                                       width=1300, height=750, 
                                       title="Sales of All Brands vs Bluebell over 24 Months Period",
                                       bubble="{textStyle:{color: 'none', fontSize: 10}}"), chartid="all")
plot(Bubble_all)


