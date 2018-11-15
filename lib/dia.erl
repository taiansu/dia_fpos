-module(dia).
-export([main/0]).

-spec erlmap([number()], fun((number()) -> number())) -> [number()].
erlmap([], _) -> [];
erlmap([Head | Tail], F) ->
  [F(Head) | erlmap(Tail, F)].

main() ->
  erlmap([1, 2, 3, 4, 5], fun(I) -> integer_to_list(I) end).
