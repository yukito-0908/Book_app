Rails.application.routes.draw do
root :to => 'books#books'
get 'books' => 'books#new'
get 'books' => 'books#index'
post 'books' => 'books#create'
get 'books/:id' => 'books#show' ,as: 'book'
end
