class CreateSpaceAgencies < ActiveRecord::Migration[7.0]
  def change
    create_table :space_agencies do |t|
      t.string :name
      t.string :headquarters
      t.boolean :exists

      t.timestamps
    end
  end
end
