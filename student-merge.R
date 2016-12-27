d1=read.table("student-mat.csv",sep=",",header=TRUE)
d2=read.table("student-por.csv",sep=",",header=TRUE)

d3=merge(d1,d2,by=c("school","sex","age","address","famsize","Pstatus","Medu","Fedu","Mjob","Fjob","reason","nursery","internet"))
print(nrow(d3)) # 382 students

###column7
d3[,"Medu"]
correctNames = c(none = 0, "primary(4th Grade)" =1, "primary(5th-9th Grade)" = 2, "secondary" = 3,"higher" = 4)
d3[,"Medu"] = factor(d3[,"Medu"], levels = correctNames, labels = names(correctNames))

###column8
d3[,"Fedu"]
correctNames = c(none = 0, "primary(4th Grade)" =1, "primary(5th-9th Grade)" = 2, "secondary" = 3,"higher" = 4)
d3[,"Fedu"] = factor(d3[,"Fedu"], levels = correctNames, labels = names(correctNames))

###column traveltime.x
d3[,"traveltime.x"]
correctNames = c("<15min" = 1, "15-30min" =2, "30min-1hour" = 3, ">1hour" = 4)
d3[,"traveltime.x"] = factor(d3[,"traveltime.x"], levels = correctNames, labels = names(correctNames))

###column8
d3[,"studytime.x"]
correctNames = c("<2hours" = 1, "2-5hours" =2, "5-10hours" = 3, ">10hours" = 4)
d3[,"studytime.x"] = factor(d3[,"studytime.x"], levels = correctNames, labels = names(correctNames))

##number of past class failure, if 1<=n<4
##d3$failures.x[d3$failures.x == 0] <- 4
##d3$failures.x

##famrel - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
d3[,"famrel.x"]
correctNames = c("very bad" = 1, "bad" =2, "normal" = 3, "good" = 4, "excellent" = 5)
d3[,"famrel.x"] = factor(d3[,"famrel.x"], levels = correctNames, labels = names(correctNames))

##freetime - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
d3[,"freetime.x"]
correctNames = c("very low" = 1, "low" =2, "normal" = 3, "high" = 4, "very high" = 5)
d3[,"freetime.x"] = factor(d3[,"freetime.x"], levels = correctNames, labels = names(correctNames))

##goout - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
d3[,"goout.x"]
correctNames = c("very low" = 1, "low" =2, "normal" = 3, "high" = 4, "very high" = 5)
d3[,"goout.x"] = factor(d3[,"goout.x"], levels = correctNames, labels = names(correctNames))

##Dalc - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
d3[,"Dalc.x"]
correctNames = c("very low" = 1, "low" =2, "normal" = 3, "high" = 4, "very high" = 5)
d3[,"Dalc.x"] = factor(d3[,"Dalc.x"], levels = correctNames, labels = names(correctNames))

##Walc - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
d3[,"Walc.x"]
correctNames = c("very low" = 1, "low" =2, "normal" = 3, "high" = 4, "very high" = 5)
d3[,"Walc.x"] = factor(d3[,"Walc.x"], levels = correctNames, labels = names(correctNames))

##health - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
d3[,"health.x"]
correctNames = c("very bad" = 1, "bad" =2, "normal" = 3, "good" = 4, "excellent" = 5)
d3[,"health.x"] = factor(d3[,"health.x"], levels = correctNames, labels = names(correctNames))

