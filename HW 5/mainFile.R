library(readr)
library(dplyr)
library(ggrepel)
library(leaflet)
library(leaflet.extras)
library(ggplot2)
library(scales)
library(MASS)
library(pls)
library(WOCR)
library(pracma)
library(car)
library(DT)
library(KernSmooth)
library(raster)
library(rgdal)
df <- read.csv("serialdat.csv", header = TRUE, sep=",", na.strings = "")
dim(df)
summary(df)
glimpse(df)

options(scipen=999)  # turn off scientific notation like 1e+06

ggplot(df, aes(x=xAxis, y=Replicate1)) +
  geom_line()

ggplot(df, aes(y=Replicate1, x=xAxis, fill=TenPowerxcopies)) + 
  geom_bar(width=0.7, position=position_dodge(width=0.8), stat="identity") +
  geom_text(aes(label=Replicate1), position=position_dodge(width=0.9), vjust=-0.25)
  

