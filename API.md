##Getting started

Create a new instance of the API wrapper:

		sh = SendHub.new("your_api_key", "your_number")

##Messages

Sending a message "Testing" to the contact with id "1111"

		sh.post_messages({:contacts => [1111], :text => "Testing"})

Scheduling a Message

		sh.post_messages({:contacts => [1111], :text => "Testing", :scheduled_at => "2011-02-17T20:29:40-0800"})

Get Message Status

		sh.get_messages({:id => 11})

Mark Message as Read

		sh.put_messages({:id => 11, :unread => "false"})

##Contacts

Adding a contact

		sh.post_contacts({:name => "John Doe", :number => "6501234567"})

Adding a contact with additional data

		sh.post_contacts({:name => "John Doe", 
											:number => "6501234567", 
											:groups => [11,12], 
											:address => "1 Infinite Loop", 
											:city => "Cupertinl", 
											:zip => "95014"})
