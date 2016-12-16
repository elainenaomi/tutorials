# README

* ruby -v
* sqlite3 --version
* gem install rails
* rails -v
* rails new blog
* cd blog

* rails server

* rails generate controller Welcome index

-- No arquivo config/routes.rb
Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
end


Criando um módulo:

resources :articles

rails generate controller Articles
rails generate model Article title:string text:text

* rails db:migrate

-- Controller no plural
-- Model no singular


Segundo modelo:
* rails generate model Comment commenter:string body:text article:references

-- references é no singular porque um comentário pertence a um artigo

-- belongs_to fica no Comment
-- has_many fica articles (has_many :comments)
