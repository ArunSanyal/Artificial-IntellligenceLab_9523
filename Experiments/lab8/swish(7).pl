student(john).
student(mary).
student(peter).
student(emma).

studies(john, math).
studies(john, physics).
studies(mary, biology).
studies(peter, chemistry).
studies(emma, math).

enrolled_in(X, Course) :-
    student(X),
    studies(X, Course).
