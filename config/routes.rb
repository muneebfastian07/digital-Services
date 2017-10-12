Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'services' => 'services#index'
  get 'people' => 'people#index'
  get 'technology' => 'technology#index'
  get 'office-moving-guide' => 'office_movies#index'
  get 'allhands' => 'all_hands#index'

  get 'story' => 'story#index'
  get 'team' => 'team#index'
  get 'careers' => 'careers#index'
  get 'press' => 'press#index'
  get 'contact' => 'contact#index'
  get 'apply' => 'apply#index'

  # login
  get 'login' => 'login#index'
  get 'login/office' => 'login#office'
  get 'login/partners' => 'login#partners'

  # customer_stories
  get 'customer-stories' => 'customer_stories#index'
  get 'customer-stories/staples-print-facility' => 'customer_stories#staples'
  get 'customer-stories/charity-water' => 'customer_stories#charity'
  get 'customer-stories/bond-street' => 'customer_stories#bond'
  get 'customer-stories/seatgeek' => 'customer_stories#seatgeek'


  # blog
  get 'blog' => 'blog#index'
  get '/blog/building-a-trustworthy-marketplace', to: 'blog#building'
  get '/blog/ellen-pao-on-solving-techs-diversity-challenges', to: 'blog#ellen'
  get '/blog/creating-a-world-class-office-experience-with-hivy', to: 'blog#creating'
end
