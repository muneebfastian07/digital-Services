class HomeController < ApplicationController
  def index
  	@sections = HomeSection.all
  end
end
