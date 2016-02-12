json.array!(@books) do |book|
  json.extract! book, :id, :author, :title, :description, :ISBN_number, :page_count, :year, :publisher
  json.url book_url(book, format: :json)
end
