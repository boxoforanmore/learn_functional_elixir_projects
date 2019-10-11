defmodule ApplicationTwoTest do
  use ExUnit.Case
  doctest ApplicationTwo

  test "greets the world" do
    assert ApplicationTwo.hello() == :world
  end
end
