library(ggplot2)
ggplot(hints_subset, aes(x=Age)) + 
  geom_histogram()

ggplot(hints_subset, aes(x=BMI)) + 
  geom_histogram()

ggplot(hints_subset, aes(x=QualityCare)) + 
  geom_bar()

ggplot(hints_subset, aes(x=RaceEthn5)) + 
  geom_bar()

my_visual_func_I <- function(data, variable){
  
  barplot(table(data[[variable]]),
          main = paste("Distribution of", variable),
          xlab = variable,
          ylab = "Frequency")
}

my_visual_func_I(hints_subset, "QualityCare")

my_visual_func_I(hints_subset, "RaceEthn5")

my_visual_funn_II <-function(data, variable){
  hist(data[[variable]],
       main=paste("Distribution of", variable),
       xlab = variable)
}
my_visual_funn_II(hints_subset, "Age")
my_visual_funn_II(hints_subset, "BMI")