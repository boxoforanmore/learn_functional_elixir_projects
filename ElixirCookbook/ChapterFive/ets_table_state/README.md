This module is a function representing how to store key value pairs in a concurrently-accessible state storage called Erlang Term Storage.

1. Go into iex: `iex ets_store.ex`
2. Start and initialize EtsStore module: `EtsStore.init`
3. Insert/Update data: `EtsStore.insert(:atom_to_insert, data)`
4. Get data from key: `EtsStore.get(:atom_to_get)`
5. Delete data by key: `EtsStore.delete(:atom_to_delete)`
