-module(double).
-export([double_all/1]).

% my way (without seeing book's way)
double_all([ ]) -> [ ];
double_all(L) -> lists:map(fun(X) -> X*2 end,L).

% book's way
%double_all([ ]) -> [ ]; 
%double_all([First|Rest]) -> [First + First | double_all(Rest)].