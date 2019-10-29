## Dynamic Routes

* Use dynamic routes to identify information provided in the URL path
* Create them putting a colon in front of their name `/medicines/:id` 
* Anything after the slash `/` in the URL will be come the `:id`
* <http://localhost:9393/medicines/12>
* <http://localhost:9393/medicines/26>
* The `:id` is accessible via `params[:id]`

```rb
get '/medicines/:id' do
  @medicine = all_the_medicines.select do |medicine|
    medicine.id == params[:id]
  end.first
  erb :'/medicines/show.html'
end
```

---
## HTML Forms and Params

* HTML Forms collect user input and arrange it to send to the server
* Each `<input>` element has a `name=` attribute which identifies the info on the server
* The `method="POST"` attribute configures how the request is sent
* The `action=` attribute configures what URL the request is sent to

```html
<form method="POST" action="/food">
  Food: <input type="text" name="favorite_food">
  Soda: <input type="text" name="soda">

  <input type="submit">
</form>
```

* Access the value of inputs on the server using the value of the name
  attribute they were configured as, like `params[:soda]`

```ruby
post '/food' do
  "I love #{params[:favorite_food]} with #{params[:soda]} to drink."
end
```

---
## Params Are Always Strings

* Notice that when you access values in `params` the values are strings!
* Even passing an `id` in a URL like `<localhost:9393/dogs/32>` the `32` will
  come as `"32"` because it's part of the String of the URL

```ruby
params = {
  :id => "32" //This is a String and NOT an Integer
}
```

---
## Instance Variables in Views

* Create instance variables with `@foo` to make a value available in a view
* Use the squid operator `<%= @foo %>` to render it in the view

```ruby
post '/reverse' do
  original_string = params["string"]
  @reversed_string = original_string.reverse

  erb :reversed
end
```

```erb
<body>
  <h1>The Ultimate Reversed String!</h1>
  <h2><%= @reversed_string %></h2>
</body>
```

---
## Iterating in ERB

* Surround control flow keywords `@friends.each do |friend|` and `end` with ice cream cones `<% %>`
* Surround text to render with squids `<%= %>`

```ruby
get '/friends' do
  @friends = [
    'Emily Wilding Davison', 'Harriet Tubman',
    'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth'
  ]
  erb :friends
end
```

```erb
<% @friends.each do |friend| %>
	<h2><%= friend %></h2>
<% end %>
```

```html
<h2>Emily Wilding Davison</h2>
<h2>Harriet Tubman</h2>
<h2>Joan of Arc</h2>
<h2>Malala Yousafzai</h2>
<h2>Sojourner Truth</h2>
```

---
## Layouts

* Create a file specfically at `views/layout.erb`
* This provides a layout for your whole website
* Include `<%= yield %>` where the rest of views will be rendered into
* Below, the "I love cats" header and image will appear on every page.

```html
<!doctype html>
<html>
  <body>
    <div class="header">
      <h1>I love cats</h1>
      <img src="http://placekitten.com/200/300">
    </div>

    <div class="container">
      <%= yield %>
    </div>

    <div class="footer">
      (C) Cat Lover 2019
    </div>
  </body>
</html>
```

---
## Incorporating Models


---
## Nested Forms
* Use brackets like `name="students[name]"` to build hash-like params.
* This generates nested objects when it is sent to the server.

```erb
<form action="/student" method="post">
  Student Name: <input type="text" name="student[name]">
  Student Grade: <input type="text" name="student[grade]">
  <input type="submit">
</form>
```

````json
params = {
  "student" => {
    "name" => "Joe",
    "grade" => "9",
  }
}
```

---
## Deeply Nested Forms
* Repeat brackets to deeply nest info, like `name="student[course][name]"`

```erb
<form action="/student" method="post">
  Student Name: <input type="text" name="student[name]">
  Student Grade: <input type="text" name="student[grade]">

  Course Name: <input type="text" name="student[course][name]">
  Course Topic: <input type="text" name="student[course][topic]">
  <input type="submit">
</form>
```

```json
params = {
  "student" => {
    "name" => "Vic",
    "grade" => "12",
    "course" => [
      {
        "name" => "AP US History",
        "topic" => "History"
      },
  }
}
```

---
## Lists in Forms
* Use a pair of brackets like `name="email[cc][]"` to refer to a list of info

```erb
<form>
  <input type="email" name="email[to]" />
  <input type="text" name="email[subject]" />

  <input type="email" name="email[cc][]" />
  <input type="email" name="email[cc][]" />
  <input type="email" name="email[cc][]" />
</form>
```

```json
params = {
  "email": {
    "to": "joe@gmail.com",
    "subject": "How are you and the volcano?",
    "cc": [
      "mary@gmail.com",
      "duncan@gmail.com"
      "vincent@gmail.com",
    ]
  }
}
```
