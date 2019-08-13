require("bundler")
Bundler.require()

account_sid = ENV['ACCOUNT_SID']
auth_token = ENV['AUTH_TOKEN']


# create Twilio client
@client = Twilio::REST::Client.new(account_sid, auth_token)


# Outbound SMS
@client.messages.create(
	to: "+12158138797",
	from: "+12674817034",
	body: "I am Locutus of Borg - Resistance is futile"
	)