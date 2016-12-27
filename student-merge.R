d1=read.table("student-mat.csv",sep=",",header=TRUE, stringsAsFactors = FALSE)
d2=read.table("student-por.csv",sep=",",header=TRUE, stringsAsFactors = FALSE)
d3 = merge(d1,d2,by = c("school","sex","age","address","famsize","Pstatus","Medu","Fedu","Mjob","Fjob","reason","nursery","internet","activities","nursery","higher","internet","romantic","famrel","freetime","goout","Dalc","Walc","health"))
print(nrow(d3)) # 382 students
dim(d3)
str(d3)
head(d3)
colnames(d3) <-  c('school','sex','age','address','family size','parents living together','mother\'s education','father\'s education','mother\'s job','father\'s job','reason choosing this school','attend nursery school','home internet access', 'extra-curricular activities','wants higher education','romantic relationship','family relationship quality','free time after school','hang out with friends','workday alcohol consumption', 'weekend alcohol consumption','current health status','guardian.x','traveltime.x','studytime.x','pastclassfailures.x','extraeducationalsupport.x','familyeducationsupport.x','extrapaidclasses.x','numberofschool absences.x','firstperiodgrade.x','secondperiodgrade.x','final.grade.x','guardian.y','traveltime.y','studytime.y','pastclassfailures.y','extraeducationalsupport.y','familyeducationsupport.y','extrapaidclasses.y','numberofschoolabsences.y','firstperiodgrade.y','secondperiodgrade.y','final.grade.y')

identical(d3[['guardian.x']],d3[['guardian.y']])
identical(d3[['traveltime.x']],d3[['traveltime.y']])
identical(d3[['studytime.x']],d3[['studytime.y']])
identical(d3[['pastclassfailure.x']],d3[['pastclassfailure.y']])
identical(d3[['extraeducationalsupport.x']],d3[['extraeducationalsupport.y']])
identical(d3[['familyeducationsupport.x']],d3[['familyeducationsupport.y']])
identical(d3[['extrapaidclasses.x']],d3[['extrapaidclasses.y']])
identical(d3[['numberofschoolabsences.x']],d3[['numberofschoolabsences.y']])
identical(d3[['firstperiodgrade.x']],d3[['firstperiodgrade.y']])
identical(d3[['secondperiodgrade.x']],d3[['secondperiodgrade.y']])
identical(d3[['final.grade.x']],d3[['final.grade.y']])

str(d3)
d3$guardian.y <- NULL
d3$traveltime.y <- NULL
d3$studytime.y <- NULL
d3$pastclassfailures.y <- NULL
d3$extraeducationalsupport.y <- NULL
d3$familyeducationalsupport.y <- NULL
str(d3)

any(is.na(d3)) #check for any na value contain inside data
d3_clean <- d3[colSums(is.na(d3)) != nrow(d3)]