defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "When a file exists, returns the sum of numbers inside the file" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 55}}

      assert response == expected_response
    end

    test "When a file don't existis, return an error message" do
      response = Numbers.sum_from_file("nofile")

      expected_response = {:error, %{message: "Invalid File!"}}

      assert response == expected_response
    end
  end
end
