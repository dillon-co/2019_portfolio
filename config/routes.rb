Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  get 'start' => 'pages#start', as: :start_page

  get 'deep_learning' => 'pages#deep_learning', as: :deep_learning

  get 'web_dev' => 'pages#web_dev', as: :web_dev

  get 'playground' => 'pages#js_playground', as: :playground

  match '*path', to: "pages#js_playground", via: :all
end
