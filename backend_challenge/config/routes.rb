Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope 'v1' do
    scope 'transactions' do
      get 'index', to: 'transactions#index'
      post 'import', to: 'transactions#import_cnba_file'
    end
  end
end
