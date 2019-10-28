# Sinatra Yield Readme

## Objectives

1. Explain what a `yield` statement in `layout.erb` does and why we use it
2. Implement a yield statement in `layout.erb`

## Layout

If you look at pretty much every website, you'll notice that there are things that exist across all of the site's pages. Typically, the navigation bar and the footer content stay the same. There may also be menu options that stay consistent across all pages.

You could copy and paste the HTML and ERB for nav bar and make sure that code is in every single erb file, but that isn't at all DRY.

In order to not repeat ourselves, we can create a single file, `layout.erb`, that contains all of the code we want to exist on every single web page.

Below is the HTML for a website that has a header and links to JavaScript files.

```html
<!doctype html>
<html>
  <head>
    <title>Cats</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
  </head>
  <body>

    <div class="container">
      <h1>I love cats</h1>
      <img src="https://s3.amazonaws.com/after-school-assets/cat-typing.gif">



    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>
</html>
```

We want every page to have a `<head>` tag with links to Bootstrap's and our own CSS files. The body of our site contains the heading `I love cats` and a cat gif. At the bottom, we have our jQuery and Bootstrap links.

Now, let's say we have an `index.erb` with the following code:

```html
<h2>This cat...</h2>
<img src="https://s3.amazonaws.com/after-school-assets/cat.gif">
```

### Yield

Now that we have our layout written, how can we get the `layout.erb` loaded around the `index.erb`?

This is where the `yield` comes in.

In `layout.erb`, we need to add a `yield` wherever we want the other page content to be loaded:

```html
<!doctype html>
<html>
  <head>
    <title>Cats</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
  </head>
  <body>

    <div class="container">
      <h1>I love cats</h1>
      <img src="https://s3.amazonaws.com/after-school-assets/cat-typing.gif">

      <%= yield %>



    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>
</html>
```

Let's say we have a controller action:

```ruby
get '/' do
  erb :index
end
```

When the above controller action is triggered and the `erb` method is called, it looks to see if there is a view titled `layout.erb`. If that file exists, it loads that content around the desired erb file, in this case `index.erb`.

The resulting HTML will look like this:

```html
<!doctype html>
<html>
  <head>
    <title>Cats</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
  </head>
  <body>

    <div class="container">

      <h1>I love cats</h1>
      <img src="https://s3.amazonaws.com/after-school-assets/cat-typing.gif">

      <h2>This cat...</h2>
      <img src="https://s3.amazonaws.com/after-school-assets/cat.gif">


    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>
</html>
```

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/sinatra-yield-readme' title='Sinatra Yield Readme'>Sinatra Yield Readme</a> on Learn.co and start learning to code for free.</p>
