defmodule ApplicationOneTest do
  use ExUnit.Case
  doctest ApplicationOne

  test "the truth on application one" do
    IO.puts("Running Application One Tests")
    assert 1 + 1 == 2
  end
end
