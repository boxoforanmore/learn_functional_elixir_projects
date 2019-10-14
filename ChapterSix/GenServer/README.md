This module implements a server using OTP-defined GenServer behaviour.

1. Launch iex: `iex connection_tracker.ex`
2. Start the server and get the PID if it launches correctly: `{:ok, pid} = ConnectionTracker.start_link`
3. Create some users: `ConnectionTracker.add_user(pid, {"ip.address", "userid"})`
4. Lookup a user: `ConnectionTracker.search_user(pid, "ip.to.lookup")`
