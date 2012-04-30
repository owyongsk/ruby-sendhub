##Getting started

Create a new instance of the API wrapper:

	sh = SendHub.new("your_api_key", "your_number")

##Messages

Sending a message "Testing" to the contact with id "1111"

	sh.post_messages({:contacts => [1111], :text => "Testing"})

Scheduling a message

	sh.post_messages({:contacts => [1111], :text => "Testing", :scheduled_at => "2011-02-17T20:29:40-0800"})
