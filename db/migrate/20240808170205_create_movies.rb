class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :original_title 
      t.string :director
      t.string :year 
      t.string :country 
      t.string :duration
      t.string :sinopsis
      
      t.timestamps
    end
  end
end
