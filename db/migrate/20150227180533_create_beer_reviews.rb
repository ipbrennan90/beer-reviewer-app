class CreateBeerReviews < ActiveRecord::Migration
  def change
    create_table :beer_reviews do |t|
      t.string :name
      t.string :brewery
      t.string :location
      t.integer :price
      t.integer :rating
      t.references :user
      t.timestamps null: false
    end
  end
end
