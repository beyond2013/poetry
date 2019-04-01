class WelcomeController < ApplicationController
  def index
		@couplet = Couplet.find_by_id(Couplet.pluck(:id).sample) if Couplet.exists?
  end
end
