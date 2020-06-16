class ContestantsController < ApplicationController
  def create
    Contestant.create!(contestant_params)
  end

  private
  def contestant_params
    params.permit(:name, :entries)
  end
end
