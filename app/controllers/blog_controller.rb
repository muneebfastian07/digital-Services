class BlogController < ApplicationController
  def index
    render 'index', layout: false
  end

  def building
    render 'building', layout: false
  end

  def ellen
    render 'ellen', layout: false
  end

  def creating
    render 'creating', layout: false
  end
end
