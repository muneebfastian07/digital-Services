Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'services' => 'services#index'
  get 'people' => 'people#index'
  get 'technology' => 'technology#index'
  get 'customer-stories' => 'customer_stories#index'
  get 'office-moving-guide' => 'office_movies#index'
  get 'allhands' => 'all_hands#index'
  get 'blog' => 'blog#index'

  get 'story' => 'story#index'
  get 'team' => 'team#index'
  get 'careers' => 'careers#index'
  get 'press' => 'press#index'

end
