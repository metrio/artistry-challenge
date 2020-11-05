Rails.application.routes.draw do
  resources :artists, :artist_instruments, :instruments
end
