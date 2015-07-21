class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :first_showing
      t.string :second_showing
      t.string :third_showing
      t.string :fourth_showing
      t.string :fifth_showing
      t.string :sixth_showing
      t.string :seventh_showing

      t.timestamps null: false
    end
  end
end
