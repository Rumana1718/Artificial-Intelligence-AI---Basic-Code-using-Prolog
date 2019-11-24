bit_and(operand1,operand2,and).
bit_and(X, Y, Bitwise_and) :- 
	and = X /\ Y.

bit_or(operand1,operand2,or).
bit_or(X, Y, Bitwise_or) :- 
	or = X \/ Y.

bit_xor(operand1,operand2,xor).
bit_xor(X,Y,Xor):- 
	xor = X xor Y.




