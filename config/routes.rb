Ecm::Courses::Backend::Engine.routes.draw do
  backend_resources :course_categories
  backend_resources :courses do
    post :reposition, on: :member
    post :decrement_used_seats, on: :member
    post :increment_used_seats, on: :member
  end    
  backend_resources :course_dates

  root to: 'home#index'
end
