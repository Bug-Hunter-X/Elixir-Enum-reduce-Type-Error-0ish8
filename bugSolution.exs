```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn x, acc ->
  case x do
    n when is_number(n) -> if n > 3, do: acc + n, else: acc
    _ -> acc # Handle non-numeric values gracefully
  end
end)
```