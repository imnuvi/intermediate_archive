# https://leetcode.com/problems/different-ways-to-add-parentheses/description/?envType=problem-list-v2&envId=dynamic-programming

defmodule Solution do

  # def parameterize(x, y, op) do

  # # end

  def split_count(split_list) do
    l1 = Enum.slice(split_list, 2..-1//1)
    val1 = Enum.at(split_list, 0)
    op1 = Enum.at(split_list, 1)

    IO.inspect(l1)
    IO.inspect(val1)
    IO.inspect(op1)

    l2 = Enum.slice(split_list, 4..-1//1)
    [x, y, op] = Enum.slice(split_list, 0..2)
    op2 = Enum.at(split_list, 3)

    IO.inspect(l2)
    IO.inspect(x)
    IO.inspect(y)
    IO.inspect(op)
    IO.inspect(op2)
  end

  @spec diff_ways_to_compute(expression :: String.t) :: [integer]
  def diff_ways_to_compute(expression) do
    split_list = String.split(expression, "", trim: true)
    split_count(split_list)
  end
end


# Solution.diff_ways_to_compute("2-1-1")
Solution.diff_ways_to_compute("2*3-4*5")
