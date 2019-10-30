# Sinatra & Active Record

* Configure Sinatra to use a database with Active Record
* Review RESTful routing

---
## Gemfile

```ruby
gem 'sinatra'
gem 'thin'
gem 'require_all'
gem 'activerecord', '5.2'
gem 'sinatra-activerecord'
gem 'rake'

group :development do
  gem 'shotgun'
  gem 'pry'
  gem 'tux'
  gem 'sqlite3', '~> 1.3.6'
end
```

---
## Configuration

```ruby
configure :development do
  set :database, 'sqlite3:db/database.db'
end
```

---
## Migrations

Use rake to run `db:create_migration`

```bash
rake db:create_migration NAME=create_dogs
```

```ruby
class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
    end
  end
end
```

---
## HTTP Method Override

* Remember that HTML forms only actually support GET and POST requests
* Configure Sinatra to look for a hidden `name="_method"` property
* Add a hidden input to your form that has a value of the HTTP method you want
  like PUT/PATCH/DELETE

**config.ru**
```ruby
use Rack::MethodOverride
run ApplicationController
```

```html
<form action="/models/<%= @model.id %>" method="post">
    <input id="hidden" type="hidden" name="_method" value="patch">
    <input type="text" ...>
</form>
```

---
## RESTful Routes

Follow the RESTful pattern to provide consistency.

<style>table, td, th {border: solid black 1px;} </style>

| HTTP VERB | ROUTE                 | Action        | Used For                                              |
|---        |---                    |---            |---                                                    | 
| GET       | '/articles'           | index | index page to display all articles                    |
| GET       | '/articles/new'       | new | displays create article form                          |
| POST      | '/articles'           | create | creates one article                                   |
| GET       | '/articles/:id'       | show | displays one article |
| GET       | '/articles/:id/edit'  | edit | displays pre-populated edit form |
| PATCH     | '/articles/:id'       | update | _modifies_ an existing article |
| PUT       | '/articles/:id'       | update | _replaces_ an existing article |
| DELETE    | '/articles/:id'       | delete | deletes one article from ID in the url            |

---
## Index Action

Show all articles and include a link to each detail page.

```ruby
get '/articles' do
  @articles = Article.all
  erb :index
end
```

```html
<ul>
  <% @articles.each do |article| %>
    <li>
      <a href="/articles/<%= article.id %>">
        <%= article.title %>
      </a>
    </li>
  <% end %>
</ul>
```

---
## New Action

* Display an empty form to create a new article
* Configure a route to get info from form and save a new instance
* Redirect to the detail page of what's been created

```ruby
get '/articles/new' do
  erb :new
end

post '/articles' do
  @article = Article.create(
    :title => params[:title],
    :content => params[:content]
  )

  redirect to "/articles/#{@article.id}"
end
```

---
## Show Action

Show the details of one instance.

```ruby
get '/articles/:id' do
  @article = Article.find_by_id(params[:id])
  erb :show
end
```

```html
<h1><%= @article.title</h1>
<p>
  <%= @article.content %>
</p>
```

---
## Edit Action (1/2)

* Look up an item in the database by its id
* Render the item in a pre-popualted form
* Configure a route to get info back and update the database

```ruby
get '/articles/:id/edit' do  #load edit form
  @article = Article.find_by_id(params[:id])
  erb :edit
end
```

```html
<form action="/articles/<%= @article.id %>" method="post">
  <input id="hidden" type="hidden" name="_method" value="patch" />
  <input type="text" name="title" value="<%= @article.title %>" />
  <input type="text" name="content" value="<%= @article.content %>" />
  <input type="submit" value="submit">
</form>
```

---
## Edit Action (2/2)

* Look up an item in the database by its id
* Render the item in a pre-popualted form
* Configure a route to get info back and update the database

```html
<form action="/articles/<%= @article.id %>" method="post">
  <input id="hidden" type="hidden" name="_method" value="patch" />
  <input type="text" name="title" value="<%= @article.title %>" />
  <input type="text" name="content" value="<%= @article.content %>" />
  <input type="submit" value="submit">
</form>
```

```ruby
patch '/articles/:id' do #edit action
  @article = Article.find_by_id(params[:id])
  @article.title = params[:title]
  @article.content = params[:content]
  @article.save
  redirect to "/articles/#{@article.id}"
end
```

---
## Delete Action

* Build a form that points to `/articles/:id` with an id and uses DELETE
* Look up an article by it's id
* Delete it from the database

```ruby
delete '/articles/:id/delete' do #delete action
  @article = Article.find_by_id(params[:id])
  @article.delete
  redirect to '/articles'
end
```

```html
<form action="/articles/<%= @article.id %>/delete" method="post">
  <input id="hidden" type="hidden" name="_method" value="delete">
  <input type="submit" value="delete">
</form>
```

---
## Association Reminder

```
rake db:create_migration NAME="create_cats"
```

```ruby
class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.integer :owner_id
    end
  end
end
```

```ruby
class Cat
  belongs_to :owner
end

class Owner
  has_many :cats
end
```

---
## Join Tables (1/2)

```ruby
create_table :users do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end

create_table :items do |t|
  t.string :name
  t.integer :price
  t.timestamps null: false
end

create_table :user_items do |t|
  t.integer :user_id
  t.integer :item_id
  t.timestamps null: false
end
```
---
## Join Tables (2/2)

```ruby
class User < ActiveRecord::Base
  has_many :user_items
  has_many :items, through: :user_items
end

class Item < ActiveRecord::Base
  has_many :user_items
  has_many :users, through: :user_items
end

class UserItem < ActiveRecord::Base 
  belongs_to :user
  belongs_to :item
end
```

---
## Multiple Controllers

* You can define controllers in multiple files
* It's a great idea to have one distinct controller for each resource
* Make sure you only ever `run` one class and the rest are loaded via `use`.

```ruby
require 'sinatra'

require_relative 'app/controllers/products_controller'
require_relative 'app/controllers/orders_controller'

use ProductsController
run OrdersController
```
