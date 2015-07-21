json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :description, :image_url, :first_showing, :second_showing, :third_showing, :fourth_showing, :fifth_showing, :sixth_showing, :seventh_showing
  json.url movie_url(movie, format: :json)
end
