Rails.application.routes.draw do
    get 'stations' => 'data#stations'
    get 'ways' => 'data#ways'
    get 'teams' => 'data#teams'
    get 'teams_message' => 'data#teams_message'
    get '' => 'home#index'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
