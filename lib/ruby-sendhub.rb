require "ruby-sendhub/version"
require 'httparty'
require 'json'

class SendHub
	include HTTParty

	attr_accessor :api_key, :number

	headers  "Content-Type" => "application/json"
	
	def initialize(api_key = nil, number = nil)
		@number = number
		@api_key = api_key
	end

	def method_missing(method, hsh = {})
		meth = method.to_s.split("_")
		if meth.first == "put" || meth.first == "delete"
			api_url = base_url + meth.last + "/" + hsh[:id].to_s + credentials
		else
			api_url = base_url + meth.last + credentials
		end
		ret = self.class.send(meth.first, api_url, :body => hsh.to_json).parsed_response
		ret.nil? && meth.first == "delete" ? "Aaaand it's gone" : ret
	end

	private

		def base_url
			"https://api.sendhub.com/v1/"
		end

		def credentials
			"/?username=#{number}&api_key=#{api_key}"
		end

end
