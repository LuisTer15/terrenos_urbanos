class AppPagesController < ApplicationController
  def app
  	@lots = Lot.all
  end
end