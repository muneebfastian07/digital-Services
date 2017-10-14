class ServicesController < ApplicationController
  def index
  end

  def service
    render params[:id], layout: 'dashboard'
  end
end
