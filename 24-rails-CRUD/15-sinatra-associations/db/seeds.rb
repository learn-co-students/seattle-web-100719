Book.destroy_all

GoogleBooks::Adapter.new("Brandon Sanderson").fetch_books
GoogleBooks::Adapter.new("Brian Christian").fetch_books
GoogleBooks::Adapter.new("Margaret Atwood").fetch_books
