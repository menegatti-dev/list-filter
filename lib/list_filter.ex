defmodule ListFilter do
  def call(list) do
    list
    |> convert_number()
    |> Enum.count(fn element -> rem(element, 2) == 1 end)
  end

  defp convert_number(list) do
    list
    |> Enum.flat_map(fn string ->
      case Integer.parse(string) do
        # transform to integer
        {int, _rest} -> [int]
        # skip the value
        :error -> []
      end
    end)
  end
end
