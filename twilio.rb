#Require Gems
require 'rubygems'
require 'twilio-ruby'

#Twilio API using account SID and auth_token
account_sid = "ACf0336aed4ceb1b2347c525757b64da21"
auth_token = "Show"

#"Magic 8 Ball Script"

#accept a magic 8-ball question
puts "What is your Magic 8-ball question?"
	question = gets.chomp

#Lists of Magic 8 Ball Possible Answers
magic8ball_possible_answers = [
	"It is certain",
	"It is decidedly so",
	"Without a doubt",
	"Yes, definitely",
	"You may rely on it",
	"As I see it, Yes",
	"Mostly likely",
	"Outlook good",
	"Yes",
	"Signs points to yes",
	"Reply hazy try again",
	"Ask again later",
	"Better not tell you now",
	"Cannot predict now",
	"Concentrate and ask again",
	"Don't count on it",
	"My reply is no",
	"My sources say no",
	"Outlook not so good",
	"Very doubtful"
	]

#call the method to select random possible answers 0-20
magic8ball_answer = magic8ball_possible_answers[rand(0-20)]

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.api.account.messages.create(
  :from => "+15406251955",
  :to => "+19704851742",
  :body => "The Magic 8 Ball shakes and says: #{magic8ball_answer}"
)

puts message.to
