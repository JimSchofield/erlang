-module(basic).
-export([mirror/1]).
-export([number/1]).

mirror(Anything) -> Anything.
number(one)   -> 1;
number(two)   -> 2;
number(three) -> 3.
