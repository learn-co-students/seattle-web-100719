# The Internet

* Network Requests
* Servers and Clients
* Rack - a simple server
* Sinatra - built on top of Rack

---

## Network Requests

* Requests are made to URLs
* Servers read the URL to pick off information

```txt
http://www.youtube.com/adelevevo
```

This URI is broken into three parts:

* http - the protocol
* youtube.com - the domain
* /adelevevo - the resource

---
## HTTP Status Codes

* Network requests come back with Status Codes that let us know how things went
* 200, 404, 403 and 500 you may have seen (Success, Not Found, Forbidden, Server Error)
* They are grouped into catagories by the hundreds

| Status Number	| Code/Description|
|---------------|-----------------|
| 100 | Informational (request received and continuing process) |
| 200 | Success (request successfully received, understood, and accepted) |
| 300 | Redirection (further action must be taken to complete request) |
| 400 | Client Error (request contains bad syntax and can't be completed) |
| 500 | Server Error (server couldn't complete request) |

---
## Rack

Let's configure a simple Rack server for <http://localhost:9292/>

**application.rb**
```rb
class Application
  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, World"
    resp.finish
  end
end
```

**config.ru**
```rb
require_relative "./application.rb"

run Application.new
```

```bash
rackup config.ru
```

---
## Dynamic Server

* The Hello World server is boring.
* Let's build a server that does something different.

**dynamic_server.rb**
```rb
class DynamicServer
  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end
end
```

---
## Iterating

* Ruby class rules still apply
* We can define a class attribute `@@items`
* We can iterate over `@@items` before finishing writing the response

```rb
class Application
  @@items = ["Apples","Carrots","Pears"]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    @@items.each do |item|
      resp.write "#{item}\n"
    end

    resp.finish
  end
end
```

---
Access `request.path` to see what the use is accessing:

```rb
class Application
  @@fruits = ["Apples", "Oranges", "Pears"]
  @@veggies = ["Carrots", "Celery", "Onion"]

  def call(env)
    request = Rack::Request.new(env)
    response = Rack::Response.new

    if request.path.match(/fruits/)
      response.write "Fruits:\n"
      @@fruits.each do |item|
        response.write "#{item}\n"
      end
    elsif request.path.match(/veggies/)
      response.write "Veggies:\n"
      @@veggies.each do |item|
        response.write "#{item}\n"
      end
    else
      response.write "Path Not Found"
    end

    response.finish
  end
end
```

---
Access `request.params` to see what params the user has provided

* <http://localhost:9292/search?q=truck&max_price=1000>
* <http://localhost:9292/search?q=van&max_price=800>

```rb
if req.path.match(/search/)
  item = req.params["q"]
  max_price = req.params["max_price"]
  
  @@items.each do |item|
    if item.title.include? item && item.price < max_price
      res.write "Item: #{item.title} Price: $#{item.price}"
    end
  end
end
```

---
## Rack Status Codes
```rb
class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/songs"
      resp.write "You requested the songs"
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
```

---
## Sinatra

Sinatra takes patterns from Rack and groups them together making creating
servers easier for us.

```rb
require 'sinatra'

class App < Sinatra::Base
  get '/' do
    "Hello, World!"
  end
end
```

**config.ru**
```rb
require 'sinatra'

require_relative './app.rb'

run Application
```

Run with `shotgun` in your terminal.

---
## MVC File Structure

```txt
├── Gemfile
├── README.md
├── app
│   ├── controllers
│   │   └── application_controller.rb
│   ├── models
│   │   └── model.rb
│   └── views
│       └── index.erb
├── config
│   └── environment.rb
├── config.ru
├── public
│   └── stylesheets
└── spec
    ├── controllers
    ├── features
    ├── models
    └── spec_helper.rb
```

---
## Gemfile

Here's a sample Sinatra Gemfile:

```rb
source "https://rubygems.org"

gem 'sinatra'
gem 'rake'
gem 'thin'
gem 'shotgun'
gem 'pry'

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
end
```

---
## Sinatra Views

Sinatra allows us to render a template file by referring to a
**views/filename.erb** file via `erb :filename` in a route.

```rb
get '/' do
  erb :index
end
```

**views/index.erb**
```html
<!DOCTYPE html>
<html>
	<head>
		<title>Info Page</title>
	</head>
	<body>
		<h1>Info Page</h1>
		<p>This is the info page: here's some information about me!</p>
	</body>
</html>
```

---
## Embedding Ruby

* Use `<%= %>` to render an expression to be visible on the page
* Use `<% %>` to wrap around structural control flow Ruby keywords
* Known as the squid `<%=` and ice-cream cone `<%` operators

```erb
<h1><%= "I love " + "Ruby!!" %></h1>
```

```erb
<% if 1 == 2 %>
  <p>1 equals 2.</p>
<% else %>
  <p>1 does not equal 2.</p>
<% end %>
```

---
## Rendering Squares in ERB

```erb
<ul>
  <% squares = [1, 4, 9, 16] %>
  <% squares.each do |square| %>
    <li><%= square %></li>
  <% end %>
</ul>
```

```HTML
<ul>
  <li>1</li>
  <li>4</li>
  <li>9</li>
  <li>16</li>
</ul>
```
