Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update]
  # custom route to increment likes
  patch "/birds/:id/like", to: "birds#increment_likes"
end
