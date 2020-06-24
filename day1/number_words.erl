-module(number_words).
-export([get/1, get/3, better_get/1, even_better_get/1, even_better_get/2]).

get(Word) ->
    [H|T] = Word,
    get(T, H, 0).

get([], _Char, Count) -> Count;
get(Word, 32, 0) ->
    [H|T] = Word,
    get(T, H, 1);
get(Word, 32, Count) ->
    [H|T] = Word,
    get(T, H, Count + 1);
get(Word, _Char, 0) ->
    [H|T] = Word,
    get(T, H, 1);
get(Word, _Char, Count) ->
    [H|T] = Word,
    get(T, H, Count).

better_get([]) -> 0;
better_get([32|T]) -> 1 + better_get(T);
better_get([_H|T]) -> better_get(T).

even_better_get(String) -> even_better_get(String, 1).
even_better_get("", 1) -> 0;
even_better_get([], Total) -> Total;
even_better_get([32|T], Count) -> even_better_get(T, Count + 1);
even_better_get([_H|T], Count) -> even_better_get(T, Count).
