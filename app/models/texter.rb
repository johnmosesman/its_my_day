require 'twilio-ruby'

class Texter
  def self.text_ethan
   # put your own credentials here
   account_sid = ENV["TWILIO_ACCOUNT_SID"]
   auth_token = ENV["TWILIO_AUTH_TOKEN"]

   # set up a client to talk to the Twilio REST API
   @client = Twilio::REST::Client.new account_sid, auth_token

   names = %w(Dennis Tami John Danielle Amy)

   @client.messages.create(
     from: ENV["TWILIO_NUMBER"],
     to: ENV["NUMBER_TO_TEXT"],
     body: "Hey Ethan, it's #{names.sample}'s day."
   )
  end
end
