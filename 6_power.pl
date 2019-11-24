pow(_,0,1).

pow(X,Y,Z) :- Y1 is Y - 1,
              pow(X,Y1,Z1), Z is Z1*X.


%pow(3,2,X).