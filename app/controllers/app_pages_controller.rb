class AppPagesController < ApplicationController
  def app
  	@lots = Lot.all
  	@i = 0
  end
end