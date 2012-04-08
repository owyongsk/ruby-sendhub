# ruby-sendhub

ruby-sendhub is a simple API wrapper for interacting with [SendHub API](http://www.sendhub.com/developer)
It's my first ever gem, so I'm crying right now as you read this.

##Installation

		$ gem install ruby-sendhub

##Requirements

A SendHub account. Get your API key [here](https://www.sendhub.com/settings)

##Usage

Create a new instance of the API wrapper:

		sh = SendHub.new("your_api_key", "your_number")
		
As a simple example, to grab all of your contacts

		sh.get_contacts

SendHub API uses RESTful services. Every methods begin with post, put, update, or delete and their resources. A more advanced example:

		sh.post_contacts({:name => "SoonKhen OwYong", :number => 4040404040, :address => "1 Infinite Loop", :city => "Cupertino", :zip => "95014"})

Every put or delete requests must have :id in it

		sh.delete_contacts({:id => [11]})

##Special Thanks

* My mom and dad, seriously, first gem you know
* [Amro Mousa](https://github.com/amro) for his source code on Gibbon which inspired this code

##License

No time for this, just do whatever you want
