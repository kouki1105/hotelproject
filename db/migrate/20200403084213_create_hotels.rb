class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :picture
      t.text :description

      t.timestamps
    end
  end
end
