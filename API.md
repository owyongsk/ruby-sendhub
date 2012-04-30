##Getting started

All the examples that you see here are the same from [SendHub's API page](http://apidocs.sendhub.com/).

Create a new instance of the API wrapper:

		sh = SendHub.new("your_api_key", "your_number")

##Messages

Sending a Message

		sh.post_messages({:contacts => [1111], :text => "Testing"})

Scheduling a Message

		sh.post_messages({:contacts => [1111], :text => "Testing", :scheduled_at => "2011-02-17T20:29:40-0800"})

Get Message Status

		sh.get_messages({:id => 11})

Mark Message as Read

		sh.put_messages({:id => 11, :unread => "false"})

##Contacts

Adding a Contact

		sh.post_contacts({:name => "John Doe", :number => "6501234567"})

Adding a Contact with Additional Data

		sh.post_contacts({:name => "John Doe", :number => "6501234567", :groups => [11,12], :address => "1 Infinite Loop", :city => "Cupertino", :zip => "95014"})

Collecting Contacts Data

		sh.get_contacts

Editing a Contact

		sh.put_contacts({:id => 22413, :name => "Jesse Doe", :number => 6501234567})

Deleting a Contact

		sh.delete_contacts({:id => 22413})

##Groups

Adding a Group

		sh.post_groups({:name => "Regulars", :slug => "regulars", :text_to_subscribe => true})

Collect Groups List

		sh.get_groups

Collect a Single Group's Contacts

		sh.get_groups_contacts({:id => 1220})
		
Adding and Removing Contacts
		
		sh.post_groups_contacts({:id => 1220, :add => [22081], :remove => [22411, 22412]})

Editing a Group

		sh.put_groups({:id => 1220, :name => "Best Customers", :slug => "regulars", :text_to_subscribe => true})

Deleting a Group

		sh.delete_group({:id => 1220})
		
##Inbox

Collecting the Inbox

		sh.get_inbox

##Threads

Viewing Threads

		sh.get_threads({:id => 12555})

##Profile

Collecting the Profile

		sh.get_profile
