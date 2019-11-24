start:- radius(R),
	
	area(R,A),write('Area is '),write(A).
                     radius(R):- write('Radius= '),read(R).
	area(R,A):- A is 3.14*R*R.