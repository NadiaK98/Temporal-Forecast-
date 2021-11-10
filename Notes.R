
##### Time seires / Forecasting ######

# 1) Overview of TimeSeries Analysis / Forecasting 
#Aims/objectives: 
     # To be held in January
     # Short introduction to time series analysis and forecasting 
     # Quick demonstration of code; introduce a ts model, and a forecast model (arima vs sarima)

#Content:
     # What is time series data / forecasting 
     # What type of data is available / what are the issues with ts? 
     # Addictive vs Multiplicative 
        # Regular vs Non-Regular (Hourly, Daily, Yearly etc)
     # Decompoistion methods 
     # Exponential smoothing / Arima models 


# 2) Webinar Series 
#Aims/Objects 
     # To be held late spring with M&M - hands on course 
    


#### Example Datasets ######

kings <- scan("http://robjhyndman.com/tsdldata/misc/kings.dat",skip=3)
ts <- ts(kings)
plot.ts(ts)
ts

souvenir <- scan("http://robjhyndman.com/tsdldata/data/fancy.dat")
ts2 <- ts(souvenir, frequency=12, start=c(1987,1))
plot.ts(ts2)

#First things to question are, can the time series be described using an adictive model. That is are the 
#interactions between trend, seasonality and erros/irregularity additive or multiplicative;
 #additive = 
      # these components add together. With an increasing trend you would expect to see the same size peak
      #are the random fluctuations in the data consistent over time?
 #multiplicative = 
     #these components are multiplied. with an increasing trend, the amplitude of seasonality increases 

# Decomposition methods exist to highlight the three components seperately 

#In example 2; we see that the time series is can be described as multiplicative, as the seasonal and random fluctaiton increase over the trend
#We can transform this through various transformation methods 


# Decomposition methods for addictive vs multiplicative trends
#First queastion whether you have seasonal or non-seasonl data

   #Steps; 
   #Step 1; Estimate the trend (i.e smoothing vs regresion)
   #Steps 2: De-trend the series. For an additive decomposition, this is done by subtracting the trend estimates from the series. For a multiplicative decomposition, this is done by dividing the series by the trend values.
   #Steps 3: Estimate seasonal factors 
   #Step 4: Determine the random component. 
    #For the additive model, random = series – trend – seasonal.
    #For the multiplicative model, random = series / (trend*seasonal)



# Decomposing Seasonal data 
ts2 <- ts(souvenir, freq = 12)
plot.ts(ts2)
plot(decompose(ts2, type = "multiplicative"))
#The plot shows the observed series, the smoothed trend line, the seasonal pattern and the random part of the series.






