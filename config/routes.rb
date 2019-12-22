Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :gardens do
    resources :flourishes, only: [:new, :create] do
    end
  end
  resources :flourishes, only: [:destroy, :edit]
end
