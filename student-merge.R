d1=read.table("student-mat.csv",sep=",",header=TRUE, stringsAsFactors = FALSE)
d2=read.table("student-por.csv",sep=",",header=TRUE, stringsAsFactors = FALSE)
d3 = merge(d1,d2,by = c("school","sex","age","address","famsize","Pstatus","Medu","Fedu","Mjob","Fjob","reason","nursery","internet"))
print(nrow(d3)) # 382 students
dim(d3)
str(d3)
head(d3)