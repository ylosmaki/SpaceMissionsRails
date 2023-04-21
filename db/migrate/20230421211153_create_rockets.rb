class CreateRockets < ActiveRecord::Migration[7.0]
  def change
    create_table :rockets do |t|
      t.string :name
      t.integer :mission_id
      t.string :first_launch

      t.timestamps
    end
  end
end
