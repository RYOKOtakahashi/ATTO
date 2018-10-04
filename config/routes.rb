Rails.application.routes.draw do
  devise_for :users
  devise_for :items
  devise_for :stars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 root 'users#show'
 resources :users

 resources :items do
	resource :stars, only: [:create, :destroy]
 end
 # 子要素にするのでdo endで囲む

end
