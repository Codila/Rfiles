#Regression in R  

weight= c(0.9,1.8,2.4,3.5,3.9,4.4,5.1,5.6,6.3)
size= c(1.4,2.6,1,3.7,5.5,3.2,3.0,4.9,6.3)
#Create a Data Frame
mouse.df<- data.frame(weight,size)
#plot the graph 
plot(mouse.df$weight,mouse.df$size)

#fit a linear model 
mouse.regression <- lm(size~weight,data=mouse.df)
summary(mouse.regression)



#Residuals-  gives the distance of the original data 
#from the fitted line ideally we want them to be symmmetric across the median being close to 0

#Coefficients ->gives the least squares estimates for the fitted line
# y = intercept + slope* weight

#standard error of the estimate and the t-value are both 
#provided to show you how the p-value wrere calculated

#p-value is the probabilibity that random chance generated the data 
# or someting else that is equal or rarer

# here we are only interested in p-value for weight variable because we
#want it to be statistically significant meaning that it should be <0.05

# A significant p-value here i.e 0.0126 means that it will give reliable guess of mouse size

#multiple R2 values is simply the correlation coeff squred menaing the weight variable can explain 61%
#of the variation in size
#adjusted R2 is the R2 valued normalized to number of variables in the model

#Make a fit line to the scatter plot
abline(mouse.regression)