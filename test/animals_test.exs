defmodule AnimalsTest do
  use ExUnit.Case
  doctest Animals

  test "see animals" do
    size = 3
    assert Animals.make_zoo() |> Animals.see_animals(size) |> length == size
  end
end
