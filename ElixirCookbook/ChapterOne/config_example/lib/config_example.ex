defmodule ConfigExample do
    @moduledoc """
    Documentation for ConfigExample.
    """
    @message_one Application.get_env(:config_example, :message_one)
    @message_two Application.get_env(:config_example, :message_two)


    @doc """
    Hello world.

    ## Examples

        iex> ConfigExample.hello()
        :world

    """
    def hello do
        :world
    end

    def show_messages() do
        IO.puts("Message one is: #{@message_one}")
        IO.puts("Message two is: #{@message_two}")
    end
end
