defmodule DiaFpos do
  @moduledoc false

  @spec exmap([number], (number -> number)) :: [number]
  def exmap([], _), do: []
  def exmap([head | tail], f), do: [ f.(head) | exmap(tail, f)]

  # @spec to_cl(number) :: charlist
  # def to_cl(i), do: Integer.to_charlist(i)

  def run do
    exmap([1, 2, 3, 4, 5], &Integer.to_charlist/1)
    # mmap([1, 2, 3, 4, 5], &to_cl/1) # still not report error
  end

end
