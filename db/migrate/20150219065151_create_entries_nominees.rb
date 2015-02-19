class CreateEntriesNominees < ActiveRecord::Migration
  def change
    create_table :entries_nominees do |t|
      t.belongs_to :entry, index: true
      t.belongs_to :nominee, index: true

      t.timestamps null: false
    end
  end
end
