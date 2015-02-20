class AddDefaultValueScoreToEntries < ActiveRecord::Migration
  def change
    change_column :entries, :score, :decimal, :default => 0
  end
end
