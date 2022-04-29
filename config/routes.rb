Rails.application.routes.draw do
  devise_for :users
  root to: "api/v1/foo#index"

  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end

  namespace :api do
    namespace :v1 do
      namespace :foo do
        get :index
      end
    end
  end 
end
