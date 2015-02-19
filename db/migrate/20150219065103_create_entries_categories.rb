class CreateEntriesCategories < ActiveRecord::Migration
  def change
    create_table :entries_categories do |t|
      t.belongs_to :entry, index: true
      t.belongs_to :category, index: true

      t.timestamps null: false
    end
  end
end
