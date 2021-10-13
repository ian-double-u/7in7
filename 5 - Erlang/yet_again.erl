-module(yet_again).
-export([fac/1]).
-export([fib/1]).

% Factorial
fac(0) -> 1;
fac(N) -> N * fac(N-1).

% Fibonacci
fib(0) -> 1;
fib(1) -> 1;
fib(N) -> fib(N-1) + fib(N-2).