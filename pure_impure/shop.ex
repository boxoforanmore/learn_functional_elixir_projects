defmodule Shop do
    def checkout() do
        case ask_number("Quantity?") do
            :error -> IO.puts("That is not a number.")
            {quantity, _} ->
                case ask_number("Price?") do
                    :error -> IO.puts("That is not a number.")
                    {price, _} -> quantity * price
                end
        end
    end

    def ask_number(message) do
        message <> "\n"
        |> IO.gets
        |> Integer.parse
    end
end
