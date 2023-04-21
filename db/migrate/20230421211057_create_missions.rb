class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :name
      t.string :initiated
      t.string :terminated

      t.timestamps
    end
  end
end
