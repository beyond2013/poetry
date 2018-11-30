class WelcomeController < ApplicationController
  def index
		@couplet = Couplet.find(Couplet.pluck(:id).sample)
  end
end
