class CategoriesController < ApplicationController
  def category
    render params[:id], layout: 'dashboard'
  end
end