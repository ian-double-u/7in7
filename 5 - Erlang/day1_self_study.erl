-module(day1_self_study).
-export([nw/1]).
-export([ctten/1]).
-export([soe/1]).

nw(S) -> length(string:lexemes(S, " ")).

ctten(0) -> 
	io:format(integer_to_list(1)), 
	io:format("~n"),
	ctten(1);
ctten(I) ->
	if 
      I < 10 -> 
         io:format(integer_to_list(I+1)),
         io:format("~n"),
         ctten(I+1);
      true -> 
         done
   end.

% write a function that uses matching to selectively print "success" or "error: message"
% given input of the form (error, message) or sucess.

soe(M) ->
	if 
		M == "success" ->
			io:format("success"),
			io:format("~n");
		true ->
			io:format(M)
	end.
