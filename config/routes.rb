Rails.application.routes.draw do
  # get '(/:dojoid)/student/index' => 'students#index'

  # get '(/:dojoid)/student/new' => 'students#new'

  # get '(/:dojoid)/student/create' => 'students#create'

  # get '(/:dojoid)/student/show' => 'students#show'

  # get '(/:dojoid)/student/edit' => 'students#edit'

  # get '(/:dojoid)/student/update' => 'students#update'

  # get '(/:dojoid)/student/destroy' => 'students#destroy'

  resources :dojos do
    resources :students
  end
  
  root "dojos#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
