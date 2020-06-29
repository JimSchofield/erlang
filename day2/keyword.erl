-module(keyword).
-export([getValue/2]).

% MyList = [{erlang, "a functional lan- guage"}, {ruby, "an OO language"}].

getValue(List, Keyword) ->
    [ Value || { Key, Value } <- List, Keyword == Key ].
