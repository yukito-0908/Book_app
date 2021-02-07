Rails.application.routes.draw do
root :to => 'books#books'
get 'books' => 'books#index'
post 'books' => 'books#create'
get 'books/:id' => 'books#show',as: 'book'
get 'books/:id/edit' => 'books#edit', as: 'edit_books'
patch 'books/:id' => 'books#update', as: 'update_books'
delete 'books/:id' => 'books#destroy', as: 'destroy_books'
end
