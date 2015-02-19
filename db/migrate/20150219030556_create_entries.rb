class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.decimal :score

      t.boolean :master, default: false, null: false

      t.timestamps null: false
    end
  end
end
