school(sls,university).
school(sch,university).
school(sele,university).
school(sde,university).
school(sfl,university).
department(phonetics,sls).
department(compling,sls).
department(linguistics,sls).
department(literature,sch).
department(translation,sch).
department(cultural_studies,sch).
department(methods,sele).
department(materials,sele).
department(evaluation,sele).
department(extension,sele).
department(media,sele).
department(english,sde).
department(french,sde).
department(russian,sfl).
department(french,sfl).
department(spanish,sfl).
department(german,sfl).
department(arabic,sfl).
prof_of(compling,hariprasad).
prof_of(compling,rahul).
prof_of(linguistics,sircar).
prof_of(literature,rajiv).
student_of(compling,dipika).
student_of(linguistics,arun).
student_of(literature,harsha).
student_of(french,mary).


belongs_to(X,Y):-
	student_of(Z,X),
	department(Z,Y).

is_a_student_of(A,B,C,D) :-
	student_of(B,A),
	prof_of(B,C),
	department(B,D).



