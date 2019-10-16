require 'bundler'
Bundler.require

require_all 'app'

DB = {
  conn: SQLite3::Database.new('flatbook.db')
}

DB[:conn].results_as_hash = true
