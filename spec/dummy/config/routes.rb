Rails.application.routes.draw do
  mount Meyasubako::Engine => '/meyasubako'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine => '/letter_opener'
  end

  root 'pages#index'
end
