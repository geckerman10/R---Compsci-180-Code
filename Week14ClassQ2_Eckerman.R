#Week 14 Class Q2

q1na<-Algebra$Last.Name[is.na(Algebra$Quiz.1)]
q2na<-Algebra$Last.Name[is.na(Algebra$Quiz.2)]
print(intersect(q1na,q2na))
print(setdiff(q1na,q2na))
print(setdiff(q2na,q1na))