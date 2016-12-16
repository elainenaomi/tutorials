# README

rails generate scaffold Categoria nome:string descricao:text
rails generate scaffold Ferramenta nome:string descricao:text disponibilidade:boolean categoria:references


t.string   "nome"
t.text     "descricao"
t.boolean  "disponibilidade"

rails g scaffold Comment body:string author:string post:references

This will generate a migration for the comments table with a post_id field and index for it. The generator will also add belongs_to :post to the Comment model.

It will not however generate the reverse side of the relationship so you'll need to add

has_many :comments

rails destroy scaffold Ferramenta


Expected string default value for '--jbuilder'; got true (boolean)
[WARNING] The model name 'Ferramenta' was recognized as a plural, using the singular 'Ferramentum' instead. Override with --force-plural or setup custom inflection rules for this noun before running the generator.

config/application.rb
config.i18n.default_locale = 'pt-BR'

config/initializers/inflections.rb


I18n.locale = 'es'
=> "es"
irb(main):016:0> 'preparado'.pluralize()
=> "preparadoes"
irb(main):017:0> 'preparado'.pluralize(:es)
=> "preparados"
irb(main):018:0>


ctiveSupport::Inflector.inflections do |inflect|
   inflect.irregular 'preparado', 'preparados'
end
to config/initializers/inflections.rb

Passo a passo para setar o rails para "pt-BR":
https://jorgevilaca.wordpress.com/2012/03/06/nacionalizando-rails-para-pt-br/

se no terminal aparecer em pt-BR, deu certo:
I18n.l Date.today, :format => :long
