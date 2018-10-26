family(person(john,wolf,date(6,7,1960),works(rs,100000)),
person(helen,wolf,date(22,6,1961),works(kr,43000)),
[person(lara,wolf,date(14,5,1990),unemployed)]).

family(person(jack,cat,date(3,9,1946),unemployed),
person(eva,cat,date(7,3,1943),works(jk,43000)),
[person(jeff,cat,date(29,7,1965),works(bnt,70000)),
person(sofia,cat,date(29,7,1965),unemployed)]).

family(person(george,fox,date(5,10,1950),works(bbc,20000)),
person(sarah,fox,date(25,3,1951),unemployed),
[person(bob,fox,date(13,2,1970),works(wb,50000)),
person(mark,fox,date(3,10,1970),unemployed),
person(sarah,fox,date(31,8,1975),works(ms,40000))]).

wife(X) :- family(_,X,_), \+( X = person(_,_,_,unemployed)).




child( X) :- family( _,  _,  Children),  member( X,  Children).
birthday( person(_,  _,  Date,  _),  Date).
childs(X) :- child( X),  birthday( X,  date( _,  _,  1965)).




exists(X) :- family(X,_,_),birthday(X, date(_,_,Z)), Z < 1963;
             family(_,X,_),birthday(X, date(_,_,Z)), Z < 1963.
