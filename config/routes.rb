Ecm::Courses::Backend::Engine.routes.draw do
  backend_resources :course_categories
  backend_resources :courses do
    post :reposition, on: :member
  end    
  backend_resources :course_dates

  root to: 'home#index'
end
