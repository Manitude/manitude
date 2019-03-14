require "twitter"
class HomeController < ApplicationController
  def index
  end

  def trend
  	topics = ["#GoBackRahul"]
  	trends = trending_hashtags
  	@relevance = analyse_topic(topics, trends)
  end

  private

  def trending_hashtags
  	byebug
  	client = TwitterClientService.new.trending_hashtags()
  end

  def analyse_topic topics, trends
  	relevance = {}
  	byebug
  	trends.collect { |t| relevance.merge!(t) if topics.include? t[:name] }
  	relevance
  end

  def analyse_tweet(topics)  	
  	TwitterClientService.new.flood_of_tweets(topics[0])
  end
end
