## Blue Bell Ice-cream Recall Analysis
Blue Bell is a very popular ice cream brand in the US. In 2015, the company’s ice creams faced a series of recalls due to Listeria concerns leading to the death of 10 people across the US. The company had to shut down its factories in Texas and Oklahoma to clean, repair, and replace machineries to stop the Listeria outbreak. We want to look at the sales volume of ice creams and other frozen products at the Ice cream section of a grocery chain around Texas Tech University due to this ice cream recall. 

#### Brief History about the Blue Bell Brand
- Based in Brenham, Texas
- First opened in 1907
- Worth $1.66 billion, Forbes (2015)
- Most popular ice cream brand in the US south
- 3rd largest ice cream maker in the US

#### So what happened??
- Listeria caused deaths reported in OK 
- Multistate listeria investigation
- April 20, 2015 – voluntary recall
- Closed down for 4 months
- Reopened in August, 2015

#### What we want to do?
- What happened to Blue Bell sales after recall?
- Did other ice cream brands take Blue Bell’s market share?
- Did Blue Bell recall affect the sales of other ice creams?

#### Sources of Data:
- 3 grocery stores in LBK
- 5 mile radius from RCOBA
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

![picture2](https://user-images.githubusercontent.com/5343403/34075423-3b4da574-e28c-11e7-9274-4c0a8ef4b57d.jpg)

Mosaic Plot
Shows the total number of products in 3 study stores over the 2 year period.
Most Blue Bell products were removed from the stores in middle months
Number of Blue Bell Products gradually increased after the recall.

![picture3](https://user-images.githubusercontent.com/5343403/34075425-3e8538c4-e28c-11e7-95d6-391e86ca454e.jpg)

Box Plot
Show if the Data has any outliers
Shows the skewness of our data






