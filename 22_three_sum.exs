# https://leetcode.com/problems/3sum/

defmodule Solution do
  def combinations(0, _), do: [[]]
  def combinations(_, []), do: []
  def combinations(size, [head | tail]) do
      (for elem <- combinations(size-1, tail), do: [head|elem]) ++ combinations(size, tail)
  end
  @spec three_sum(nums :: [integer]) :: [[integer]]
  def three_sum(nums) do
    combinations(3, nums)
    |> Enum.map(fn x -> Enum.sort(x) end)
    |> Enum.filter(fn x -> Enum.sum(x) == 0 end)
    |> Enum.uniq()
  end
end
