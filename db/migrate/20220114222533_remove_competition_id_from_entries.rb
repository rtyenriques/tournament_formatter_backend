class RemoveCompetitionIdFromEntries < ActiveRecord::Migration[6.1]
  def change
    remove_column :entries, :competition_id, :integer
  end
end
