defmodule ApplicationOneTest do
  use ExUnit.Case
  doctest ApplicationOne

  test "greets the world" do
    assert ApplicationOne.hello() == :world
  end
end
