Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'services' => 'services#index'
  get 'people' => 'people#index'
  get 'technology' => 'technology#index'

end
