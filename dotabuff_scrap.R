message('Loading Packages')
library(dplyr)
library(rvest)
library(mongolite)

message('Scraping Data') 
url <- "https://www.dotabuff.com/heroes/played?date=week"
list_most_played_hero <- url %>%
  read_html() %>%
  html_elements("table") %>% html_table() %>% as.data.frame()
str(list_most_played_hero)

message('Cleanig Data')
data_hero <- list_most_played_hero[,-1]
data_hero$Pick.Rate <- as.numeric(gsub("%", "", data_hero$Pick.Rate))
data_hero$Matches.Played <- as.numeric(gsub("\\D", "", data_hero$Matches.Played))
data_hero$Win.Rate <- as.numeric(gsub("%", "", data_hero$Win.Rate))

message('Input Data to MongoDB Atlas')
atlas_conn <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)

atlas_conn$insert(data_hero[sample(1:nrow(data_hero), 2),])

rm(atlas_conn)






