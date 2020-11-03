class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.integer :beach_id
      t.integer :visitor_id

      t.timestamps
    end
  end
end
