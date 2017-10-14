Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'services' => 'services#index'
  get 'people' => 'people#index'
  get 'technology' => 'technology#index'
  get 'office-moving-guide' => 'office_movies#index'

  get 'story' => 'story#index'
  get 'team' => 'team#index'
  get 'careers' => 'careers#index'
  get 'press' => 'press#index'
  get 'contact' => 'contact#index'
  get 'apply' => 'apply#index'
  get 'partners' => 'partners#index'

  #allhands
  get 'allhands' => 'all_hands#index'
  get 'category/effortless-office' => 'all_hands#category'
  get '/article/work-wifi-speed-troubleshooting' => 'all_hands#work'

  #signup
  get 'signup' => 'signup#index'
  get 'signup/terms' => 'signup#terms'
  post '/sign_up' => 'signup#sign_up'

  # login
  get 'login' => 'login#index'
  get 'login/office' => 'login#office'
  get 'login/partners' => 'login#partners'
  post 'login/log_in' => 'login#log_in'
  delete 'logout' => 'login#destroy'

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
  get '/blog/efficiency-for-every-office', to: 'blog#efficiency'

  # dashboard
  get 'dashboard' => 'dashboard#home'
  get 'dashboard/orders' => 'dashboard#orders'
  get 'dashboard/schedule' => 'dashboard#schedule'
  get 'dashboard/support' => 'dashboard#support'
  get 'dashboard/account' => 'dashboard#account'

  #categories
  get 'categories/category/:id' => 'categories#category'

  # services
  get 'services/service/:id' => 'services#service'
end
