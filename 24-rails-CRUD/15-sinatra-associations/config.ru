require_relative './config/environment'

# use Rack::MethodOverrides
use BooksController
use AuthorsController
run ApplicationController
