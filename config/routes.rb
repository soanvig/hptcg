Rails.application.routes.draw do
    root 'pages#show', page: 'index'
    get '/contact' => 'contact#form'
    post '/contact' => 'contact#mail'
    get '/:page' => 'pages#show'
end
