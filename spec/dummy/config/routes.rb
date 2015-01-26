Rails.application.routes.draw do
  mount Meyasubako::Engine => "/meyasubako"

  mount LetterOpenerWeb::Engine => "/letter_opener"

  root 'pages#index'
end
