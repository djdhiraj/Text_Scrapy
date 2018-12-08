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
