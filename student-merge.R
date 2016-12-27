d1=read.table("student-mat.csv",sep=",",header=TRUE, stringsAsFactors = FALSE)
d2=read.table("student-por.csv",sep=",",header=TRUE, stringsAsFactors = FALSE)
d3 = merge(d1,d2,by = c("school","sex","age","address","famsize","Pstatus","Medu","Fedu","Mjob","Fjob","reason","nursery","internet","activities","nursery","higher","internet","romantic","famrel","freetime","goout","Dalc","Walc","health"))
print(nrow(d3)) # 382 students
dim(d3)
str(d3)
head(d3)

colnames(d3) <-  c('school','sex','age','address','family size','parents living together','mother\'s education','father\'s education','mother\'s job','father\'s job','reason choosing this school','attend nursery school','home internet access', 'extra-curricular activities','wants higher education','romantic relationship','family relationship quality','free time after school','hang out with friends','workday alcohol consumption', 'weekend alcohol consumption','current health status','guardian(Math class)','travel time(Math class)','study time(Math class)','past class failures(Math class)','extra-educational support(Math class)','family education support(Math class)','extra paid classes(Math class)','number of school absences(Math class)','first period grade(Math class)','second period grade(Math class)','final grade(Math class)','guardian(Portugal class)','travel time(Portugal class)','study time(Portugal class)','past class failures(Portugal class)','extra-educational support(Portugal class)','family education support(Portugal class)','extra paid classes(Portugal class)','number of school absences(Portugal class)','first period grade(Portugal class)','second period grade(Portugal class)','final grade(Portugal class)')

identical(d3[['guardian(Math class)']],d3[['guardian(Portugal class)']])
identical(d3[['travel time(Math class)']],d3[['travel time(Portugal class)']])
identical(d3[['study time(Math class)']],d3[['study time(Portugal class)']])
identical(d3[['past class failure(Math class)']],d3[['past class failure(Portugal class)']])
identical(d3[['extra-educational support(Math class)']],d3[['extra-educational support(Portugal class)']])
identical(d3[['family education support(Math class)']],d3[['family education support(Portugal class)']])
identical(d3[['extra paid classes(Math class)']],d3[['extra paid classes(Portugal class)']])
identical(d3[['number of school absences(Math class)']],d3[['number of school absences(Portugal class)']])
identical(d3[['first period grade(Math class)']],d3[['first period grade(Portugal class)']])
identical(d3[['second period grade(Math class)']],d3[['second period grade(Portugal class)']])
identical(d3[['final grade(Math class)']],d3[['final grade(Portugal class)']])

str(d3)
d3$'guardian(Portugal class)' <- NULL
d3$'travel time(Portugal class)' <- NULL
d3$'study time(Portugal class)' <- NULL
d3$'past class failures(Portugal class)' <- NULL
d3$'extra-educational support(Portugal class)' <- NULL
d3$'family education support(Portugal class)' <- NULL
str(d3)

colnames(d3)[names(d3) == 'guardian(Math class)'] = 'guardian'
colnames(d3)[names(d3) == 'travel time(Math class)'] = 'travel time'
colnames(d3)[names(d3) == 'study time(Math class)'] = 'study time'
colnames(d3)[names(d3) == 'past class failures(Math class)'] = 'past class failures'
colnames(d3)[names(d3) == 'extra-educational support(Math class)'] = 'extra-educational support'
colnames(d3)[names(d3) == 'family education support(Math class)'] = 'family education support'

any(is.na(d3)) #check for any na value contain inside data
d3_clean <- d3[colSums(is.na(d3)) != nrow(d3)]

str(d3)

###"mother's education"
d3[,"mother's education"]
correctNames = c(none = 0, "primary(4th Grade)" =1, "primary(5th-9th Grade)" = 2, "secondary" = 3,"higher" = 4)
d3[,"mother's education"] = factor(d3[,"mother's education"], levels = correctNames, labels = names(correctNames))

###"father's education"
d3[,"father's education"]
correctNames = c(none = 0, "primary(4th Grade)" =1, "primary(5th-9th Grade)" = 2, "secondary" = 3,"higher" = 4)
d3[,"father's education"] = factor(d3[,"father's education"], levels = correctNames, labels = names(correctNames))

###travel time
d3[,"travel time"]
correctNames = c("<15min" = 1, "15-30min" =2, "30min-1hour" = 3, ">1hour" = 4)
d3[,"travel time"] = factor(d3[,"travel time"], levels = correctNames, labels = names(correctNames))

###study time
d3[,"study time"]
correctNames = c("<2hours" = 1, "2-5hours" =2, "5-10hours" = 3, ">10hours" = 4)
d3[,"study time"] = factor(d3[,"study time"], levels = correctNames, labels = names(correctNames))

##family relationship quality - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
d3[,"family relationship quality"]
correctNames = c("very bad" = 1, "bad" =2, "normal" = 3, "good" = 4, "excellent" = 5)
d3[,"family relationship quality"] = factor(d3[,"family relationship quality"], levels = correctNames, labels = names(correctNames))

##free time after school - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
d3[,"free time after school"]
correctNames = c("very low" = 1, "low" =2, "normal" = 3, "high" = 4, "very high" = 5)
d3[,"free time after school"] = factor(d3[,"free time after school"], levels = correctNames, labels = names(correctNames))

##hang out with friends - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
d3[,"hang out with friends"]
correctNames = c("very low" = 1, "low" =2, "normal" = 3, "high" = 4, "very high" = 5)
d3[,"hang out with friends"] = factor(d3[,"hang out with friends"], levels = correctNames, labels = names(correctNames))

##workday alcohol consumption - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
d3[,"workday alcohol consumption"]
correctNames = c("very low" = 1, "low" =2, "normal" = 3, "high" = 4, "very high" = 5)
d3[,"workday alcohol consumption"] = factor(d3[,"workday alcohol consumption"], levels = correctNames, labels = names(correctNames))

##weekend alcohol consumption - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
d3[,"weekend alcohol consumption"]
correctNames = c("very low" = 1, "low" =2, "normal" = 3, "high" = 4, "very high" = 5)
d3[,"weekend alcohol consumption"] = factor(d3[,"weekend alcohol consumption"], levels = correctNames, labels = names(correctNames))

##current health status - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
d3[,"current health status"]
correctNames = c("very bad" = 1, "bad" =2, "normal" = 3, "good" = 4, "excellent" = 5)
d3[,"current health status"] = factor(d3[,"current health status"], levels = correctNames, labels = names(correctNames))

str(d3)
