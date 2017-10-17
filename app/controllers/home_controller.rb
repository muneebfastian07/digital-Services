class HomeController < ApplicationController
  def index
  	@sections = HomeSection.all
  	@services = Service.all
  	@homefeatures = Homefeature.all
  	@stories = Story.all
  end
end
