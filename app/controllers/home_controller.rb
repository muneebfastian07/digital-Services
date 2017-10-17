class HomeController < ApplicationController
  def index
  	@sections = HomeSection.all
  	@services = Service.all
  end
end
