#This was the first part to donwload the data
#
#library(rvest)
#scotusURL <- "https://en.wikipedia.org/wiki/List_of_mountains_by_elevation"
#setwd("~/Dropbox/JANO/2016/Conabio/Github/ShinyMountain/")
#getwd()
#temp <- scotusURL %>% 
#  html %>%
#  html_nodes("table")

#html_table(temp[1]) ## 8000m
#html_table(temp[2]) ## 7000m
#html_table(temp[3]) ## 6000m
#html_table(temp[4]) ## 5000m
#html_table(temp[5]) ## 4000m
#html_table(temp[6]) ## 3000m
#html_table(temp[7]) ## 2000m
#html_table(temp[8]) ## 1000m
#html_table(temp[9]) ## <1000m


#T8000 <- data.frame(html_table(temp[1]))
#T7000 <- data.frame(html_table(temp[2]))
#T6000 <- data.frame(html_table(temp[3]))
#T5000 <- data.frame(html_table(temp[4]))
#T4000 <- data.frame(html_table(temp[5]))
#T3000 <- data.frame(html_table(temp[6]))
#T2000 <- data.frame(html_table(temp[7]))
#T1000 <- data.frame(html_table(temp[8]))
#T900 <- data.frame(html_table(temp[9]))

#write.table(T8000, file = "T8000.txt", sep = "\t")
#write.table(T7000, file = "T7000.txt", sep = "\t")
#write.table(T6000, file = "T6000.txt", sep = "\t")
#write.table(T5000, file = "T5000.txt", sep = "\t")
#write.table(T4000, file = "T4000.txt", sep = "\t")
#write.table(T3000, file = "T3000.txt", sep = "\t")
#write.table(T2000, file = "T2000.txt", sep = "\t")
#write.table(T1000, file = "T1000.txt", sep = "\t")

# I check it and did a little changes
# mountanis lower 1000 m was download directly by the website

library(shiny)
library(plotly)
library(ggplot2)
library(ggrepel)
dir()

TablaH <- read.csv("Mountains.csv", header = T, sep = "," , dec = ".")
dim(TablaH)
summary(TablaH)
summary(TablaH$Mountain)
Mount_Cont <- paste(TablaH$Mountain, TablaH$Coutry.ID, sep = "-")
Mount_Cont
TablaH <- data.frame(TablaH, Mount_Cont)
TablaH$Continent
TablaH$Range

names(TablaH)
str(TablaH)
Tabla1 <- TablaH

summary(Tabla1)
## create the ggplot data
#Tabla2 <- Tabla1 %>%
#  filter(Categorie == "8000" | Categorie == "7000")
#filter(Categorie == "7000")
#Tabla2

#names(Tabla2)
#LL <- ggplot(Tabla2, aes(x = Metres, y = reorder(Mountain, Metres)), size = 0.2) +
#  # use a larger dot
#  geom_segment(aes(yend = Mountain), xend = 0, colour = "grey50") +
#  # plot the n points and color them
#  geom_point(size = 1) +
#  labs(title = "", x = "Meters", y = "Mountain") +
#  theme_bw() 
#LL <- LL + theme(axis.text = element_text(size = 8),
#                 axis.title = element_text(size = 14,face = "bold"))
#LL

#LL+geom_text(aes(label=Tabla2$Mountain), 
#                    color="gray20", size=1)

#gg <- ggplotly(LL)
#gg
## use the simple theme


## Make the graph
#plot_ly(Tabla2, x = Metres, y = Mountain, mode = "markers" , marker = list( color = ifelse(Metres > 8000,"red","blue") , opacity = 0.5 , size = 5) ) %>%
  
#  #Add the segment with add_trace
#  #add_trace(x = nrow(Tabla2), y = c(min(Metres), max(Metres)), mode = "lines") %>%
  
#  #Layout
#  layout(showlegend = T)


