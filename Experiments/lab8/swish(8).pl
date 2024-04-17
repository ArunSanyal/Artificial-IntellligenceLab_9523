employee(john, developer).
employee(mary, designer).
employee(peter, manager).
employee(emma, analyst).
employee(alex, developer).
employee(sarah, designer).

department(developer, software).
department(designer, creative).
department(manager, administration).
department(analyst, finance).

works_in(X, Department) :-
    employee(X, Role),
    department(Role, Department).