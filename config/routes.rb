Ecm::Courses::Backend::Engine.routes.draw do
  resources :course_categories
  resources :courses
  resources :course_dates

  root to: 'home#index'
end
