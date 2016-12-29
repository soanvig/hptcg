Rails.application.routes.draw do
    root 'pages#show', page: 'index'
    get '/:page' => 'pages#show'
end
