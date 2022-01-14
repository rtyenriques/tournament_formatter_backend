class AddColumnCompetitionToEntries < ActiveRecord::Migration[6.1]
  def change
    add_reference :entries, :competition, foreign_key: true
  end
end
