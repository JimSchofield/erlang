-module(translate).
-export([loop/0, translate/2]).
loop() ->
    receive 
        {From, "casa"}->
            From ! "house",
            loop();
        {From, "blanco"}->
            From ! "House",
            loop();
        {From, _ } ->
            From ! "I don't understand",
            loop()
    end.

translate(To, Word) ->
    To ! {self(), Word},
    receive
        Translation -> Translation
    end.
