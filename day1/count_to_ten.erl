-module(count_to_ten).
-export([count/2, count_to/1]).

count_to(End) -> count(0, End).

count(End, End) -> io:fwrite("~p~n", [End]);
count(N, End) ->
    io:fwrite("~p~n", [N]),
    count(N + 1, End).
