Rails.application.routes.draw do

	resources :blogs

	devise_for :users, path: '', path_names: {
			sign_in: 'login',   # 'users/sign_in' => 'login'
			sign_out: 'logout', # 'users/sign_out' => 'logout'
			sign_up: 'register' # 'users/sign_up' => 'register'
	}, controllers: {
			omniauth_callbacks: 'users/omniauth_callbacks'
	}

	root to: "blogs#index"
end
