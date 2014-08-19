class HomeController < ApplicationController

  def index
    @attending = Attending.new
    @not_attending = NotAttending.new
  end

end
