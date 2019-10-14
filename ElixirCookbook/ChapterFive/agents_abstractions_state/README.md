This is a module from the book that uses the Agent module as an abstraction around states in the form of a phonebook.

1. Go into iex: `iex phone_book.ex`
2. Start the process to maintain the data: `PhoneBook.start_link`
3. Insert/update some contacts: `PhoneBook.insert(:atom_name, "xxx-xxx-xxxx")`
4. Retrieve a contact: `PhoneBook.get(:atom_name)`

