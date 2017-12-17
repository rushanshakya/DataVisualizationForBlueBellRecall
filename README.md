## Blue Bell Ice-cream Recall Analysis
Blue Bell is a very popular ice cream brand in the US. In 2015, the company’s ice creams faced a series of recalls due to Listeria concerns leading to the death of 10 people across the US. The company had to shut down its factories in Texas and Oklahoma to clean, repair, and replace machineries to stop the Listeria outbreak. We want to look at the sales volume of ice creams and other frozen products at the Ice cream section of a grocery chain around Texas Tech University due to this ice cream recall. 

#### Brief History about the Blue Bell Brand
- Based in Brenham, Texas
- First opened in 1907
- Worth $1.66 billion, Forbes (2015)
- Most popular ice cream brand in the US south
- 3rd largest ice cream maker in the US

#### So what happened??
- Listeria caused deaths reported in Oklahoma
- Multistate listeria investigation
- April 20, 2015 – voluntary recall
- Closed down for 4 months
- Reopened in August, 2015

#### What we want to do?
- What happened to Blue Bell sales after recall?
- Did other ice cream brands take Blue Bell’s market share?
- Did Blue Bell recall affect the sales of other ice creams?

#### Sources of Data:
- 3 grocery stores in Lubbock, Texas
- 5 mile radius from Rawls College Of Business, Texas Tech University
- Daily transaction records
- Data collected from September 2014 to August 2016
- 24 months of data

#### Data Cleaning:
For our data cleansing process, we mostly used R. We used R-packages like dplyr, and sqldf to clean our initial raw file. Our raw data had about 1,448,437 ice cream transaction observations with 14 variables. 
Once we had our raw data imported into R, we then added the Month variable to our initial data file. We added the Month variable based on the transaction date of each ice cream sale transaction.
After the months were added to our original data set, we then aggregated the total sales quantity of the data set according to the Months and the Name/Long Description of our transactions. 
After, the data was aggregated according to the Sales Quantity, we further aggregated our data according to the Brands (i.e. Blue Bell and Other). 
After, we were done with the data aggregation, we further divided our data set into three different time periods:  
Pre-recall: Period	Month 1 to Month 7  
Recall Period:	Month 8 to Month 15  
Post-recall Period:	Month 16 to Month 24  

#### Graphical Analysis for the Recall
![picture1](https://user-images.githubusercontent.com/5343403/34075414-fae09a5a-e28b-11e7-879a-265b26e3cbf2.jpg)  
- Scattered plot
- Shows the sales of each ice cream product.
- Blue Bell products not seen in the middle months
- Prior and post recall, some blue bell ice creams sold really well.  

![mosaic](https://user-images.githubusercontent.com/5343403/34075550-b71e270c-e28f-11e7-9302-89ecefb6a277.jpg)
- Mosaic Plot
- Shows the total number of products in 3 study stores over the 2 year period.
- Most Blue Bell products were removed from the stores in middle months
- Number of Blue Bell Products gradually increased after the recall.

![picture3](https://user-images.githubusercontent.com/5343403/34075425-3e8538c4-e28c-11e7-95d6-391e86ca454e.jpg)
- Box Plot
- Show if the Data has any outliers
- Shows the skewness of our data  

![pre](https://user-images.githubusercontent.com/5343403/34075525-f56c13d0-e28e-11e7-84b5-c3b66ab05c98.png)  
For the graphical analysis on pre-recall period we have first divided the existing preprocessed data into 3 parts: Pre-recall, Recall & Post recall period. This work was done using Python. 
First, we have analyzed the data for pre-recall period and plotted line graphs using Pyplot of Matplotlib library. 
From the line graph we can deduce that, Blue Bell had a huge number of shares in the market comparing all other ice-cream brands. But after 7th month of the pre-recall period, a downward spike is visible for Blue Bell while the other brands’ sales are spiked up. Around this period, news spread about the listeria incident and we can guess that people started to avoid Blue Bell products.  

![recal](https://user-images.githubusercontent.com/5343403/34075526-fa12e076-e28e-11e7-9880-4b2db07388df.png)  
As we have discussed before, in the recall period, all the Blue Bell products were called back from the market. We can see this from the line graph that the sales of Blue Bell went to negative first and then vanished completely from the graph. For the next few months, Blue Bell stopped selling their products in the market. In the meantime, other products started having higher sales than usual. From this visualization, we can deduce that people did not stop eating ice-cream completely after the listeria incident. Rather they just switched to different brands.  

![post](https://user-images.githubusercontent.com/5343403/34075529-fcd9d332-e28e-11e7-98f4-4142ba276b51.png)  
Last, we analyzed the post-recall period. After 5 months of not being in the market, Blue Bell returned and started selling all their products. From the line graph, we can say that they have a consistent rate of selling which is not high like pre-recall period. This is due to the fact that they were releasing lesser products in the beginning of the post-recall phase. Though during the 23rd month, they had a spike on their sale like the other brands which indicates that people were buying their products and they started to sell more items. 
Also, there can be 2 possibilities of Blue Bells low sale in the post recall period: while they were out of the market, some other brands came and grab Blue Bell’s consumers. Another reason might be the fact that people were trusting other brands because they are too scared to eat Blue Bell products again. Though after the listeria event, Blue Bell is still getting some sales proves that they have some loyal customers who remained with Blue Bell in the post recall period.  

##### Bubble Chart
The last part of our graphical analysis is done with Bubble chart using GoogleVis library in R. Bubble charts are very useful tool for data visualization because these charts can represent more variables in one place at a time. In all our bubble charts we have plotted the months in X-axis and total sale in Y-axis. Also, another new feature for these charts is that the size of the circles (or bubbles) are showing the sales quantity. The bigger the bubble, the higher the sales for that item. Also, when we hover mouse on a circle, it shows the details of each product.  

![bubble](https://user-images.githubusercontent.com/5343403/34075506-7d81a98e-e28e-11e7-9f7e-158dad8b3ca2.PNG)  
In the chart, we can see the sales of all the ice cream brands in terms of quantity. Also, we can interpret the sales quantity from bubble size. The recall period is visible here in the chart as well. One reason of the chart showing Blue Bell circles bigger in the post recall period is that we are showing individual brands here. While the aggregated sales of all other brands are higher than Blue Bell, individually they can’t possibly compete Blue Bell. 

![bubble1](https://user-images.githubusercontent.com/5343403/34075507-7f0088c0-e28e-11e7-90b3-c83326b83e04.PNG)  
The next chart is showing only the Blue Bell product sales in the 24 months period. From this chart, we can deduce that there are some Blue Bell products which became popular post recall period. One reason behind this statistic may be that because this brand was releasing less items in the market, Blue Bell fans were buying whichever item they can get.  

![bubble2](https://user-images.githubusercontent.com/5343403/34075508-8131cb2c-e28e-11e7-990e-4a0eb44b550f.PNG)  
In the last graph, we are interpreting the overall sales statistics for Blue Bell and other brands. Here we can see that the sales of other products became very high during the recall and post recall period.  

#### Conclusion
The Blue Bell Recall had a huge impact on the Blue Bell post-recall sales. It seems that the other direct competitors of Blue Bell had a direct advantage over Blue Bell over all ice-cream and other ice cream novelty sales over the recall period and then after. Our data lacked enough post-recall data to fully analyze the post-recall effect of Blue Bell. The company’s post-recall re-entry into the ice cream market was divided within several months and 5 different phases. We only saw the reintroduction of few of its products during the post-recall period we took into consideration for our study.  
The next step for our project is going to incorporating a year worth of post-recall data to fully analyze the level of sales and determining the level of loyalty Blue Bell customers showed to this brand. Blue Bell being the biggest market taker among ice cream products, it is going to be an interesting customer loyalty project to tell if its loyal customers will return to its ice-creams. 
We should also incorporate other ice brands that compete with Blue Bell for further analysis of what had happened when Blue Bell was completely out from the market. 








