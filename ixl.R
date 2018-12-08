library(rvest)
ixl<-read_html("https://in.ixl.com/math/class-iii")
selector<-'.skill-tree-skills-header , .skill-tree-skill-name'
ixl_topics<-ixl %>% html_nodes(css=selector)%>% html_text()
write.csv(ixl_topics,"my_ixl.csv",quote = FALSE,sep = "")
#For all classes
ixl_1<-read_html("https://in.ixl.com/math/class-i")
ixl_2-read_html("https://in.ixl.com/math/class-ii")
ixl_3read_html("https://in.ixl.com/math/class-iii")
ixl_4-read_html("https://in.ixl.com/math/class-iv")
ixl_5-read_html("https://in.ixl.com/math/class-v")
ixl_6-read_html("https://in.ixl.com/math/class-vi")
ixl_7-read_html("https://in.ixl.com/math/class-vii")
ixl_8-read_html("https://in.ixl.com/math/class-viii")
ixl_9-read_html("https://in.ixl.com/math/class-ix")
selector<-'.skill-tree-skills-header , .skill-tree-skill-name'
ixl_topics_class1<-ixl_1 %>% html_nodes(class=selector) %>%  html_text()
ixl_topics_class2-ixl_2  %>% html_nodes(class=selector) %>%  html_text()
ixl_topics_class1<-ixl_3  %>% html_nodes(class=selector) %>%  html_text()
ixl_topics_class1<-ixl_4 %>% html_nodes(class=selector) %>%  html_text()
ixl_topics_class1<-ixl_5 %>% html_nodes(class=selector) %>%  html_text()
ixl_topics_class1<-ixl_6 %>% html_nodes(class=selector) %>%  html_text()
ixl_topics_class1<-ixl_7 %>% html_nodes(class=selector) %>%  html_text()
ixl_topics_class1<-ixl_8 %>% html_nodes(class=selector) %>%  html_text()
ixl_topics_class1<-ixl_9 %>% html_nodes(class=selector) %>%  html_text()
write.csv(ixm_1,"my_ixm_1.csv",quote = FALSE,sep = "")
write.csv(ixm_2,"my_ixm_2.csv",quote = FALSE,sep = "")
write.csv(ixm_3,"my_ixm_3.csv",quote = FALSE,sep = "")
write.csv(ixm_1,"my_ixm_4.csv",quote = FALSE,sep = "")
write.csv(ixm_2,"my_ixm_5.csv",quote = FALSE,sep = "")
write.csv(ixm_3,"my_ixm_6.csv",quote = FALSE,sep = "")
write.csv(ixm_3,"my_ixm_7.csv",quote = FALSE,sep = "")
write.csv(ixm_1,"my_ixm_8.csv",quote = FALSE,sep = "")
write.csv(ixm_2,"my_ixm_9.csv",quote = FALSE,sep = "")




