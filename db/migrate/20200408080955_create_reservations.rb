class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.integer :number_of_people
      t.string :name
      t.string :email
      t.integer :hotel_id

      t.timestamps
    end
  end
end
