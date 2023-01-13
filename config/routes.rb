Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # GET    /birds(.:format) birds#index
  # 
  # POST   /birds(.:format) birds#create
  # 
  # GET    /birds/new(.:format) birds#new
  # 
  # GET    /birds/:id/edit(.:format) birds#edit
  # GET    /birds/:id(.:format) birds#show
  # PATCH  /birds/:id(.:format) birds#update
  # PUT    /birds/:id(.:format) birds#update
  # DELETE /birds/:id(.:format) birds#destroy

  resources :birds
end
