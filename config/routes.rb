AngularSimpleApp::Application.routes.draw do

  scope module: :web do
    root to: 'welcome#index'
    resources :partials, only: [:show]
  end

  namespace :api do
    namespace :v1 do
      resources :todos
    end
  end

end
