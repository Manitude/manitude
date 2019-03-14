# app/services/twitter_client.rb

require "twitter"

class TwitterClientService

	def twitter_client
		client = Twitter::REST::Client.new do |config|
  			config.consumer_key        = CONSUMER_KEY
  			config.consumer_secret     = CONSUMER_SECRET
  			config.access_token        = ACCESS_TOKEN
  			config.access_token_secret = ACCESS_TOKEN_SECRET
		end	
	end

	def trending_hashtags(woeid=23424848)
		client = twitter_client
		# client.trends(id=woeid, options={})
		client.search('#GoBackRahul')
	end

	def trend_analysis(trends=[])
		client = twitter_client
		client.search('#GoBackRahul')
	end

	def flood_of_tweets(topic)
		client = twitter_client
		client.search(topic)
	end
	
end