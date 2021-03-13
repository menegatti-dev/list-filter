defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "return count of odd numbers" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      response = ListFilter.call(list)

      expected_response = 3

      assert expected_response == response
    end
  end
end
