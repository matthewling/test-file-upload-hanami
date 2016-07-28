get  '/home', to: 'home#index'
post '/home/upload_without_whitelist', to: 'home#upload_without_whitelist', as: :upload_without_whitelist
post '/home/upload', to: 'home#upload', as: :upload
post '/home/avatar', to: 'home#avatar', as: :avatar
