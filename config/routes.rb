Rails.application.routes.draw do
  scope (Rails.application.config.relative_url_root || '/') do
    get '/', to: 'books#index'
    resources :books do
      get 'show_subjects'
    end
  end
end
