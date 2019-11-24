child(X,Y) :- parent(Y,X).
spouse(X,Y) :- child(P,X), child(P,Y).
husband(X,Y) :- male(X), spouse(X,Y).
wife(X,Y) :- female(X), spouse(X,Y).
son(X,Y) :- male(X), child(X,Y).
daughter(X,Y) :- female(X), child(X,Y).
mother(X,Y) :- female(X), parent(X,Y).
father(X,Y) :- male(X), parent(X,Y).
sibling(X,Y) :- parent(P,X), parent(P,Y), X\=Y.
brother(X,Y) :- male(X), sibling(X,Y).
sister(X,Y) :- female(X), sibling(X,Y).
grandmother(X,Y) :- mother(X,P), parent(P,Y).
grandfather(X,Y) :- father(X,P), parent(P,Y).
aunt(X,Y) :- sister(X,P), parent(P,Y).
aunt(X,Y) :- wife(X,P), sibling(P,Q), parent(Q,Y).
uncle(X,Y) :- brother(X,P), parent(P,Y).
uncle(X,Y) :- husband(X,P), sibling(P,Q), parent(Q,Y).
niece(X,Y) :- daughter(X,P), sibling(P,Y).
niece(X,Y) :- daughter(X,P), sibling(P,Q), spouse(Q,Y).
nephew(X,Y) :- son(X,P), sibling(P,Y).
nephew(X,Y) :- son(X,P), sibling(P,Q), spouse(Q,Y).
cousin(X,Y) :- parent(P,X), sibling(P,Q), parent(Q,Y).


male(hossain).
male(hekim).
male(karim).
male(rahim).
male(shuvo).
male(forhad).
male(tanvir).
male(asad).
male(mehedi).
male(xxx).
male(aman).



female(maleka).
female(rehena).
female(rekha).
female(rahima).
female(kochi).
female(suchi).
female(koly).
female(jibon).
female(marjan).
female(rina).
female(yyy).


parent(hossain,karim).
parent(maleka,karim).
parent(hekim,rekha).
parent(rehena,rekha).
parent(hekim,forhad).
parent(rehena,forhad).
parent(hekim,jibon).
parent(rehena,jibon).
parent(karim,koly).
parent(rekha,koly).
parent(karim,kochi).
parent(rekha,kochi).
parent(karim,shuvo).
parent(rekha,shuvo).
parent(jibon,mehedi).
parent(jibon,mehedi).
parent(aman,mehedi).
parent(aman,mehedi).
parent(hossain,rahim).
parent(maleka,rahim).
parent(forhad,marjan).
parent(rina,marjan).
parent(shuvo,xxx).
parent(shuvo,yyy).

