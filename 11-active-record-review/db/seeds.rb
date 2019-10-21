# URL : "https://www.googleapis.com/books/v1/volumes?q=The+bible"
response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=Harry+Potter")

converted_to_json = JSON.parse(response)

all_my_books = converted_to_json["items"]

all_my_books.each do |book|
  title = book["volumeInfo"]["title"]
  published_date = book["volumeInfo"]["publishedDate"]
  desc = book["volumeInfo"]["description"]
  Book.create(title: title, published_date: published_date , description: desc)
  # binding.pry
end

# Pry.start
# 0
