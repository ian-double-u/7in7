-module(translate).
-export([loop/0, translate/2]).

loop() ->

	receive
		{From, "casa"} ->
			From ! "house",
			loop();

		{From, "blanca"} ->
			From ! "white",
			loop();

		{From, _} ->
			From ! "I don't understand.",
			loop()
end.

translate(To, Word) ->
	To ! {self(), Word},
	receive
		Translation -> Translation
end.

% c(translate).
% Translator = spawn(fun translate:loop/0).
% translate:translate(Translator, "blanca").