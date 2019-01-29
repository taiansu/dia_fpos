defmodule DiaFpos do
  @moduledoc false

  @spec exmap([number], (number -> number)) :: [number]
  def exmap([], _), do: []
  def exmap([head | tail], f), do: [ f.(head) | exmap(tail, f)]

  @spec to_cl(number) :: string
  def to_cl(_), do: 'a'

  def run do
    # all of them don't produce error, where I thought they should
    exmap([1, 2, 3, 4, 5], &Integer.to_charlist/1)
    exmap([1, 2, 3, 4, 5], &:erlang.integer_to_list/1)
    exmap([1, 2, 3, 4, 5], &to_cl/1)
  end
end
