-module(match).
-export([report/1]).

report({ error, Message }) ->
    io:fwrite("Error! ~p~n", [Message]);
report(success) ->
    io:fwrite("Success!").
