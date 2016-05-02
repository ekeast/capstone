class WelcomeController < ApplicationController
  def index
    @rates = Rate.where(rater_id: current_user.id).where("stars != 0")
    @articles = @rates.map(&:rateable)
  end
end
