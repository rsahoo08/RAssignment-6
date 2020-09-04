# 3.1 Enter in the Data,make a stem&leafplot?
w=scan()
stem(w)
The decimal point is 1 digit(s) to the right of the |
  
0 | 577
2 | 7
4 | 19
6 | 0325
8 | 50378
###---------------------------------------------------------------------------------------------
#3.2 Read this stem and leaf plot, enter in the data and make a histogram:For this question following list of values:
Frequency	Number(X)
80-89		3
90-99		6
100-111		6
### --------------------------------------------------------------------------------------------
x= scan()
1: 80 82 88 91 91 95 95 97 98 101 106 106 109 110 111
16: 
Read 15 items
 hist(x)
 hist(x,probability = TRUE)
 rug(jitter(x))
 hist(x,breaks=10)
 ###--------------------------------------------------------------------------------------------
 #3.3 One can generate random data with the \r"-commands. For example,Create two different histograms for two different times of defining x as above. 
 x = rnorm(100)
 hist(x)
y = rnorm(100)
 hist(x)
 #Do you get the same histogram?
 ANSWER:-NO
 ###----------------------------------------------------------------------------------------------
#3.4 Make a histogram and boxplot of these data sets from these Simple data sets: south, crime and aid. Which of
these data sets is skewed? Which has outliers, which is symmetric.
#1 Datasets
data(mtcars)
head(mtcars,5)
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
p=as.numeric(mtcars[[1]])
hist(p)
boxplot(p)
hist()
###2 Datasets
data("iris")
> head(iris)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
#3rd Datasets
data("PlantGrowth")
 head(PlantGrowth)
  weight group
1   4.17  ctrl
2   5.58  ctrl
3   5.18  ctrl
4   6.11  ctrl
5   4.50  ctrl
6   4.61  ctrl
###-----------------------------------------------------------------------------------------------------
###3.5For the Simple data sets bumpers, firstchi, math make a histogram. Try to predict the mean, median and
standard deviation. Check your guesses with the appropriate R commands.
###1st dataset
data("iris")
head(iris,5)
x=as.numeric(iris[[1]])
Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
mean(x)
[1] 5.843333
median(x)
[1] 5.8
sd(x)
[1] 0.8280661
hist(x)
boxplot(x)
###2nd Datasets
data("ToothGrowth")
head(ToothGrowth,5)
len supp dose
1  4.2   VC  0.5
2 11.5   VC  0.5
3  7.3   VC  0.5
4  5.8   VC  0.5
5  6.4   VC  0.5
t=as.numeric(ToothGrowth[[1]])
 mean(t)
[1] 18.81333
> median(t)
[1] 19.25
> sd(t)
[1] 7.649315
hist(t)
boxplot(t)
###3RD Datasets
data(PlantGrowth)
head(PlantGrowth,5)
  weight group
1   4.17  ctrl
2   5.58  ctrl
3   5.18  ctrl
4   6.11  ctrl
5   4.50  ctrl
> d=as.numeric(PlantGrowth[[1]])
> mean(d)
[1] 5.073
> median(d)
[1] 5.155
> sd(d)
[1] 0.7011918
> hist(d)
> boxplot(d)
###-+-+-+-+-+============*************------------------------------------------------
#3.6 The number of O-ring failures for the first 23 flights of the US space shuttle Challenger were
0 1 0 NA 0 0 0 0 0 1 1 1 0 0 3 0 0 0 0 0 2 0 1
(NA means not available { the equipment was lost). Make a table of the possible categories. Try to find the
mean. (You might need to try mean(x,na.rm=TRUE) to avoid the value NA, or look at x[!is.na(x)].)

p = scan()
1: 0 1 0 NA 0 0 0 0 0 1 1 1 0 0 3 0 0 0 0 0 2 0 1
24: 
Read 23 items
> result.mean <-  mean(p,na.rm = TRUE)
> print(result.mean)
[1] 0.4545455
###--------------------------------------------------------------------------------------
#3.7The Simple dataset pi2000 contains the first 2000 digits of π. Make a histogram. Is it surprising? Next, find
the proportion of 1’s, 2’s and 3’s. Can you do it for all 10 digits 0-9?

### First I make a histogram
hist(pi2000, main="Histogram of the first 2000 digits of pi", xlab="Pi digits", col="red",  xlim=c(0,9), freq = FALSE, ylab="Proportion")

table(pi2000)/length(pi2000)
## pi2000
##      0      1      2      3      4      5      6      7      8      9 
## 0.0905 0.1065 0.1035 0.0945 0.0975 0.1025 0.1000 0.0985 0.1010 0.1055
As expected all the proportions are around 10%. The graph below represents the Proportion of each digit:

barplot(table(pi2000)/length(pi2000), col="red", main="Proportion of Each Digit", ylab="Proportion", xlab="Digits")
###---------------------------------------------------------------------------------------
### 3.8 Fit a density estimate to the Simple dataset pi2000 .
data(mtcars)
attach(mtcars) # make eruptions visible
hist(mtcars,15,prob=T) # proportions, not frequencies
lines(density(mtcars)) # lines makes a curve, default bandwidth
#lines(density(mtcars,bw="SJ"),col=’red’)
###---------------------------------------------------------------------------------------
###3.9Find a graphic in the newspaper or from the web. Try to use R to produce a similar figure.
###(Sir, am taking the example of a pie3D,according to that i write the Rcode for same.)
# Get the library.
library(plotrix)
# Create data for the graph.
x <-  c(21, 62, 10,53)
lbl <-  c("London","New York","Singapore","Mumbai")

# Give the chart file a name.
png(file = "3d_pie_chart.jpg")

# Plot the chart.
pie3D(x,labels = lbl,explode = 0.1, main = "Pie Chart of Countries ")

