-module(lesson2_task05).

-export([reverse/1]).

reverse([H|T]) -> reverse(T) ++ [H];
reverse([]) -> [].
