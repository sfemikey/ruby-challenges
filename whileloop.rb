puts "Are you annoyed with me yet? Please answer Y/N:"
answer = gets.chomp.downcase

while (answer = "n")
  puts "Are you annoyed with me yet? Please answer Y/N:"
  answer = gets.chomp.downcase
end


all_tweets = [
  "My first twwet",
  "My second tweet",
  "My third tweet",
  "I have the world's most boring tweets"
]

total_number_of_tweets = all_tweets.size
tweets_displayed = 0

while (tweets_displayed <= total_number_of_tweets)
  puts all_tweets[tweets_displayed]
  tweets_displayed += 1
  puts tweets_displayed
end
