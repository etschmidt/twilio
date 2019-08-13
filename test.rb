require("bundler")
Bundler.require()

# yes, these should be ENV variables....
account_sid = "AC816b96e029306efb68427894c647d4e6"
auth_token = "a978d483a48017cf390d810fed704cd9"


# create Twilio client
@client = Twilio::REST::Client.new(account_sid, auth_token)


# Outbound SMS
@client.message.create(
	to: "+12158138797",
	from: "+12674817034",
	message: "This the Borg Collective - Resistance is futile"
	)