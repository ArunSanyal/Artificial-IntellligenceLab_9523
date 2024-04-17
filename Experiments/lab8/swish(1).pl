% Define family relationships
parent(terry, john).
parent(terry, mary).
parent(john, pat).
parent(john, anne).
parent(mary, jim).

% Define male and female genders
male(terry).
male(john).
male(pat).
male(jim).
female(mary).
female(anne).

% Define rules for different types of relationships
father(Father, Child) :- parent(Father, Child), male(Father).
mother(Mother, Child) :- parent(Mother, Child), female(Mother).
child(Child, Parent) :- parent(Parent, Child).
grandparent(Grandparent, Grandchild) :- parent(Grandparent, Parent), parent(Parent, Grandchild).
sibling(Sibling1, Sibling2) :- parent(Parent, Sibling1), parent(Parent, Sibling2), Sibling1 \= Sibling2.
brother(Brother, Sibling) :- sibling(Brother, Sibling), male(Brother).
sister(Sister, Sibling) :- sibling(Sister, Sibling), female(Sister).

% Define ancestor relationship recursively
ancestor(Ancestor, Descendant) :- parent(Ancestor, Descendant).
ancestor(Ancestor, Descendant) :- parent(Parent, Descendant), ancestor(Ancestor, Parent).

% Define descendant relationship recursively
descendant(Descendant, Ancestor) :- ancestor(Ancestor, Descendant).

% Define rules for cousin relationship
cousin(Cousin1, Cousin2) :- parent(Parent1, Cousin1), parent(Parent2, Cousin2), sibling(Parent1, Parent2), Cousin1 \= Cousin2.

% Define rules for uncle and aunt relationships
uncle(Uncle, NieceNephew) :- parent(Parent, NieceNephew), brother(Uncle, Parent).
aunt(Aunt, NieceNephew) :- parent(Parent, NieceNephew), sister(Aunt, Parent).it 