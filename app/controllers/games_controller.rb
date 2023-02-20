require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    word = params["word"]
    url = "https://wagon-dictionary.herokuapp.com/#{word}"
    @result = JSON.parse(URI.open(url).read)['found']
  end
end
