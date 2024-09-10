json.extract! book_entry, :id, :title, :created_at, :updated_at
json.url book_entry_url(book_entry, format: :json)
