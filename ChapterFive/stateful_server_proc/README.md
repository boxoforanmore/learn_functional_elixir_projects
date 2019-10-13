This module provides an example for passing messages with state using a server.


1. Launch in iex with: `iex messages_with_state.ex`
2. Get the pid: `{:ok, pid} = MessagesWithState.start_link`
3. Register the pid with the message server: `Process.register(pid, :message_server)`
4. Now send some messages!
* Syntax: `send(:message_server, {"message here", self()})`
* Main options for messages
    * `"ping"`
    * `"pong"`
    * `"anything"`
    * `:status` -> gives the current status of number of message types 
