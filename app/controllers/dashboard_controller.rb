class DashboardController < ApplicationController
  def home
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
end