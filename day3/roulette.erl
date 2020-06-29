-module(roulette).
-export([loop/0]).

% send a number, 1-6
loop() ->
    receive
        3 -> io:format("Bang.~n"), exit({roulette, die, at,erlang:time()});
        _ -> io:format("Click.~n"), loop()
    end.
