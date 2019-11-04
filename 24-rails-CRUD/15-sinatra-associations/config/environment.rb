require 'bundler'
Bundler.require

require_relative '../app/adapters/google_books'
require_all 'app'

DB = ActiveRecord::Base.establish_connection({
  adapter: 'sqlite3',
  database: 'db/development.sqlite'
})
