class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :name
      t.string :crew
      t.string :location
      t.integer :competition_id

      t.timestamps
    end
  end
end
