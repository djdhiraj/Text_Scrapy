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
