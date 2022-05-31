defmodule ExercisesTest do
  use ExUnit.Case
  doctest Exercises

  test "determine list length" do
    assert Exercises.list_len([1,2,3]) == 3
  end

  test "determine single elem list length" do
    assert Exercises.list_len([1]) == 1
  end

  test "determine empty list length" do
    assert Exercises.list_len([]) == 0
  end

  test "determine range" do
    assert Exercises.range(1,2) == [1,2]
    assert Exercises.range(0,0) == [0]
    assert Exercises.range(0,1) == [0,1]
    assert Exercises.range(1,0) == []
  end

end
