-module(primes).
-export([is_prime/1, list_up_to/1]).

is_prime(Num) ->
    is_prime(Num, trunc(math:sqrt(Num))).

is_prime(_Num, Check) when Check < 2 -> true;
is_prime(Num, Check) when Num rem Check == 0 -> false;
is_prime(Num, Check) when Num rem Check /= 0 ->
    is_prime(Num, Check - 1).

list_up_to(Num) ->
    Candidates = lists:seq(2,Num),
    [ X || X <- Candidates, is_prime(X) ].
