class AllHandsController < ApplicationController
  def index
    render 'index', layout: false
  end

  def category
    render 'category', layout: false
  end

  def work
    render 'work', layout: false
  end
end
