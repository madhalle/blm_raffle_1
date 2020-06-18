class GeneratorController < ApplicationController

  def show
    @contestants = Contestant.all
  end
end
