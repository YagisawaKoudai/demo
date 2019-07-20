Rails.application.routes.draw do
  resources :books do
    get 'show_subjects'
  end
end
