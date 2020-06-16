class WelcomeController < ApplicationController
  def index
    @contestant = Contestant.new
  end
end
