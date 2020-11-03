class CreateVisitors < ActiveRecord::Migration[6.0]
  def change
    create_table :visitors do |t|
      t.string :name
      t.integer :age
      t.string :city
      t.boolean :mermaid_descendant

      t.timestamps
    end
  end
end
