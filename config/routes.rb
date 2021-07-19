Rails.application.routes.draw do
  
  root 'user_accounts#account_number'

  post 'pin', to: 'user_accounts#pin'
  post 'accounts', to: 'accounts#index', as: 'accounts'
  get 'new', to: 'account_transactions#new', as: 'new_account_transaction'
  post 'operations', to: 'account_transactions#operations'
  get 'options', to: 'pages#select_options'
  get 'receipt', to: 'account_transactions#receipt'

  get '*path' => redirect('/')

end
