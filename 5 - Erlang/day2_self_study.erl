-module(day2_self_study).
-export([ktv/2]).
-export([total_price/1]).

ktv(L, Key) -> [Val || {K, Val} <- L, K == Key].

total_price(L) -> [{I, Q*P} || {I, Q, P} <- L].

%[{shirt,3,20},{pants,2,40},{hat,1,15}]
