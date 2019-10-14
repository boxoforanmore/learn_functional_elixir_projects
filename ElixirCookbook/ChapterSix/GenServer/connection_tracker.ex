defmodule ConnectionTracker do
    use GenServer


    ################
    ## Client API ##
    ################


    def start_link(opts \\ []) do
        GenServer.start_link(__MODULE__, :ok, opts)
    end

    def add_user(server, message) do
        GenServer.cast(server, {:add, message})
    end

    def search_user(server, ip) do
        GenServer.call(server, {:search, ip})
    end

    ## Code for testing supervisors
    def crash_the_server(server, number) do
        GenServer.call(server, {:crash_me, number})
    end


    ############################
    ## Callbacks (Server API) ##
    ############################

    def init(:ok) do
        {:ok, Map.new}
    end

    def handle_cast({:add, message}, connection_dict) do
        {ip, uuid} = message
        
        if Map.get(connection_dict, message) do
            {:noreply, connection_dict}
        else
            {:noreply, Map.put(connection_dict, ip, uuid)}
        end
    end

    def handle_call({:search, ip}, _from, connection_dict) do
        {:reply, Map.fetch(connection_dict, ip), connection_dict}
    end
    def handle_call({:crash_me, number}, _from, connection_dict) do
        {:reply, div(number, 0), connection_dict}
    end

    def handle_info(info, state) do
        IO.puts("Received info message #{inspect(info)}")
        {:noreply, state}
    end

    def terminate(reason, state) do
        IO.puts("Terminating... reason: #{inspect(reason)}")
        {:ok, state}
    end

    def code_change(_oldVsn, state, _extra) do
        # Perform actions to upgrade, downgrade, or update code
        {:ok, state}
    end
end
