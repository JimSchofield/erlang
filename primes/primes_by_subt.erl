-module(primes_by_subt).
-export([up_to/1]).

up_to(Top) ->
    Candidates = lists:seq(2,Top),
    calc_sieve(Candidates, Top).

calc_sieve(Sieve, 2) -> Sieve;
calc_sieve(Sieve, Num) ->
    calc_sieve([ X || X <- Sieve, X rem Num /=0 ], Num - 1).
