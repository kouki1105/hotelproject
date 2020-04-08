class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.float :rating
      t.string :title
      t.text :body
      t.integer :hotel_id

      t.timestamps
    end
  end
end
