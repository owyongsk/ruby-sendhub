# ruby-sendhub

ruby-sendhub is a simple API wrapper for interacting with [SendHub API](http://www.sendhub.com/developer)

##Installation

		$ gem install ruby-sendhub

##Requirements

A SendHub account. Get your API key [here](https://www.sendhub.com/settings)

##Usage

Currently, only two methods are implemented as this is my first Gem ever. Woohoo! "cries"

Create a new instance of the API wrapper:

		sb = SendHub.new("your_api_key", "your_number")
		
Now you grab the contacts you have. You need the contact ID to send any message

		sb.get_contacts

Once you grabbed the contacts you can send messages to the contact(s) by

		sb.send_message("Your message here", *num)

##Special Thanks

My mom and dad, seriously, first gem you know
[Amro Mousa](https://github.com/amro) for his source code on Gibbon, inspired this code

##License

No time for this, just do whatever you want
