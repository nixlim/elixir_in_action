defmodule Exercises do
  @moduledoc """
  Documentation for `Exercises`.
  """

  @doc """
  Determine list length

  ## Examples

      iex> Exercises.list_len([1,3,4])
      3
  """
  def list_len(list) do
    do_calculate_list_length(0, list)
  end

  defp do_calculate_list_length(length_of_list, []) do
    length_of_list
  end

  defp do_calculate_list_length(length_of_list, [_head | tail]) do
    do_calculate_list_length(length_of_list + 1, tail)
  end


  @doc """
  Produce list for a range

  ## Example

      iex> Exercises.range(1,3)
      [1,2,3]
  """
  def range(from, to) do
    do_range(from, to, [])
  end

  defp do_range(from, to, list) do
    case from <= to do
      true -> do_range(from + 1, to, [from | list])
      false -> Enum.reverse(list)
    end
  end
end
