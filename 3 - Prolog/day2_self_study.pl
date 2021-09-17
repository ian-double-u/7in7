factorial(0,Result,Result). 
factorial(Num,Place,Result) :-
	Num > 0,
	NewNum is Num - 1,
	NewPlace is Place * Num,
	factorial(NewNum,NewPlace,Result).


% 5, 1, F
% 4, 5, F
% 3, 20, F
% 2, 60, F
% 1, 120, F
% 0, EXIT -> F = 120.