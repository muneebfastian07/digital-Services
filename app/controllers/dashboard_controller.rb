class DashboardController < ApplicationController
  def home
    @current_user = Office.find(session[:office_id])
    render 'home', layout: false
  end

  def orders
    render 'orders', layout: false
  end

  def schedule
    render 'schedule', layout: false
  end

  def support
    render 'support', layout: false
  end

  def account
    @current_user = Office.find(session[:office_id])
    render 'account', layout: false
  end
end