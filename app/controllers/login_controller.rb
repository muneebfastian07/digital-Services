class LoginController < ApplicationController
  def index
  end

  def office
    render 'office', layout: false
  end

  def partners
    render 'partners', layout: false
  end
end