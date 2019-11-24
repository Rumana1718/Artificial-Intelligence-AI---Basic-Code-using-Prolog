list_cost([],0).

list_cost([Head|Tail], Totalcost):-
list_cost(Tail, Sum1),
Totalcost is Head+Sum1.
