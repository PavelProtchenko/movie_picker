class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :image
      t.string :title
      t.integer :year
      t.string :director
      t.text :description

      t.timestamps
    end
  end
end
