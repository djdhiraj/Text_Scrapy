test<-readline("https://www.imdb.com/")
test<-readLines("https://www.imdb.com/")
length(test)
library(rvast)
install.packages("rvest")
test_html<-read_html("https://www.imdb.com/")
library(rvest)
test_html<-read_html("https://www.imdb.com/")
test_html
selector<-".blurb"
text<-test_html %>% html_node(css=selector) %>% html_text()
text
#Scraping table from web
data_table<-read_html("http://www.michaeljgrogan.com/rvest-web-scraping-using-r/")
selector<-".column-4 , .column-3 , .column-2 , .column-1"
my_data<-data_table %>% html_nodes(css=selector) %>% html_text()
my_data
mt_data<-as.data.frame(my_data)
mt_data
Observation<-html_nodes(css='.column-1')
Observation<-data_table %>% html_nodes(css='.column-1')
Observation
Observation<-data_table %>% html_nodes(css='.column-1') %>% html_text()
Observation
Marketing_spend<-data_table %>% html_nodes(css='.column-2') %>% html_text()
Number_of_compaing<-data_table %>% html_nodes(css='.column-3') %>% html_text()
Consumer_rating<-data_table %>% html_nodes(css='.column-4') %>% html_text()
df<-data.frame(Observation,Marketing_spend,Number_of_compaing,Consumer_rating)
df
df[-1,]
df<-df[-1,]
