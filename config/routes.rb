Rails.application.routes.draw do
    devise_for :users, :controllers => { registrations: 'registrations' }
    root 'pages#show', page: 'index'
    mount Thredded::Engine => '/forum'

    get '/kontakt'          => 'contact#form'
    post '/kontakt'         => 'contact#mail'
    get '/spis-kart'        => 'pages#show', page: 'cardlist'
    get '/spis-kart-bs'     => 'pages#show', page: 'cardlist-bs'
    get '/spis-kart-da'     => 'pages#show', page: 'cardlist-da'
    get '/spis-kart-qp'     => 'pages#show', page: 'cardlist-qp'
    get '/spolecznosc'      => 'pages#show', page: 'community'
    get '/opis-gry'         => 'pages#show', page: 'description'
    get '/jak-zaczac'       => 'pages#show', page: 'how-start'
    get '/kolekcjonowanie'  => 'pages#show', page: 'collect'
    get '/dodatki'          => 'pages#show', page: 'extensions'
    get '/o-grze'           => 'pages#show', page: 'game'
    get '/zasady'           => 'pages#show', page: 'rules'
    get '/handel'           => 'pages#show', page: 'trade'
    # get '/:page'            => 'pages#show'

    get '/contact'          => 'contact#form'
    post '/contact'         => 'contact#mail'
    get '/:page'            => 'pages#show'
end
