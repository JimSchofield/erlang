-module(watcher).
-export([loop/0]).

loop() ->
    process_flag(trap_exit, true),
    receive
        {monitor, Process} ->
            link(Process),
            io:format("Monitoring process.~n"),
            loop();

        {'EXIT', From, Reason} ->
            io:format("Process ~p died because: ~p", [From, Reason]),
            io:format("Start another one~n"),
            loop()
    end.
