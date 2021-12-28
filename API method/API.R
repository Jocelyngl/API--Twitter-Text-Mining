
# Data Method: Twitter data using rtweet package
# File: twitterdata1.R
# Theme: Collect Twitter data using API

# install_package("rtweet")
library(rtweet)

token <- rtweet::create_token(
  app = "Your App name",
  consumer_key <- "YOURCONSUMERKEY",
  consumer_secret <- "YOURCONSUMERSECRET",
  access_token <- "YOURACCESSTOKEN",
  access_secret <- "YOURACCESSSECRET")

## Check token

rtweet::get_token()

## search for 1000 tweets of "Joe Biden" in English
jbt <- rtweet::search_tweets(q = "JoeBiden", n = 500, lang = "en", retryonratelimit = TRUE)

# Get Joe Biden's most recent tweets 
JBT = get_timelines("JoeBiden", n = 600)

## preview users data
users_data(JBT)

## Boolean search for large quantity of tweets (which could take a while)
jbt2 <- rtweet::search_tweets("JoeBiden", n = 500,
                              retryonratelimit = TRUE)

## plot time series of tweets frequency
ts_plot(jbt2, by = "mins") + theme_bw()