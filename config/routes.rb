Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	# root
	root 'statics#main'
  #               root GET      /                                      statics#main


	# current user
	scope '/user' do
		resources :lists, only: [:index, :new, :edit], controller: 'user_lists', as: 'user_lists'
	end
  #         user_lists         GET         /user/lists                     user_lists#index
  #      new_user_list         GET         /user/lists/new                 user_lists#new
  #     edit_user_list         GET         /user/lists/:id/edit            user_lists#edit

	# other users
	resources :lists, only: [:index]
  #              lists         GET         /lists                          lists#index

	# api
	namespace :api do
    resources :restaurants, only: [:create]
      #api_restaurants         POST        /api/restaurants                api/restaurants#create

		scope '/user' do
			resources :lists, controller: 'user_lists', as: 'user_lists'
      #     api_user_lists     GET         /api/user/lists                 api/user_lists#index
      #                        POST        /api/user/lists                 api/user_lists#create
      #  new_api_user_list     GET         /api/user/lists/new             api/user_lists#new
      # edit_api_user_list     GET         /api/user/lists/:id/edit        api/user_lists#edit
      #      api_user_list     GET         /api/user/lists/:id             api/user_lists#show
      #                        PATCH       /api/user/lists/:id             api/user_lists#update
      #                        PUT         /api/user/lists/:id             api/user_lists#update
      #                        DELETE      /api/user/lists/:id             api/user_lists#destroy
      resources :bookmarks, only: [:index, :create, :destroy], controller: 'user_bookmarks', as: 'user_bookmarks'
      # api_user_bookmarks     GET         /api/user/bookmarks             api/user_bookmarks#index
      #                        POST        /api/user/bookmarks             api/user_bookmarks#create
      # api_user_bookmark      DELETE      /api/user/bookmarks/:id         api/user_bookmarks#destroy

      resources :restaurant_list, only: [:index, :show, :create, :update], controller: 'restaurant_list', as: 'restaurant_lists'
      #  api_restaurant_lists  GET         /api/user/restaurant_list       api/restaurant_lists#index
      #                        POST        /api/user/restaurant_list       api/restaurant_lists#create
      #  api_restaurant_list   GET         /api/user/restaurant_list/:id   api/restaurant_lists#show
      #                        PATCH       /api/user/restaurant_list/:id   api/restaurant_lists#update
      #                        PUT         /api/user/restaurant_list/:id   api/restaurant_lists#update
		end

		resources :lists
    #          api_lists       GET         /api/lists                      api/lists#index
    #                          POST        /api/lists                      api/lists#create
    #       new_api_list       GET         /api/lists/new                  api/lists#new
    #      edit_api_list       GET         /api/lists/:id/edit             api/lists#edit
    #           api_list       GET         /api/lists/:id                  api/lists#show
    #                          PATCH       /api/lists/:id                  api/lists#update
    #                          PUT         /api/lists/:id                  api/lists#update
    #                          DELETE      /api/lists/:id                  api/lists#destroy
	end

end
