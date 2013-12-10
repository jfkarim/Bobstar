Bobstar::Application.routes.draw do
  root to: "pages#index"
  
  resources :floors, only: [:index]
  
  resources :pages do
    collection do
      get 'map'
      get 'go_exams'
    end
  end
  
end
