require "ruby-sendhub/version"
require 'httparty'
require 'json'
require 'cgi'

class SendHub
	include HTTParty

	attr_accessor :api_key, :number

	headers  "Content-Type" => "application/json"
	
	def initialize(api_key = nil, number = nil)
		@number = number
		@api_key = api_key
	end

	def get_contacts
		c = self.class.get base_url + "contacts" + credentials
		c.parsed_response['objects']
	end

	def send_message(message, *args)
		api_url = base_url + "messages" + credentials
		m = { :contacts => args, :text => message }
		self.class.post(api_url, :body => m.to_json)
	end

	private

		def base_url
			"https://api.sendhub.com/v1/"
		end

		def credentials
			"/?username=#{number}&api_key=#{api_key}"
		end

end
