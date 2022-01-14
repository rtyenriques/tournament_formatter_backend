class CreateCompetitions < ActiveRecord::Migration[6.1]
  def change
    create_table :competitions do |t|
      t.string :comp_type
      t.string :description

      t.timestamps
    end
  end
end
