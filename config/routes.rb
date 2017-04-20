Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'

  scope '/api' do
    scope '/slack_commands' do
      post '/' => 'slack_commands#create'
    end
  end
end
