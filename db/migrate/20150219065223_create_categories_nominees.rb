class CreateCategoriesNominees < ActiveRecord::Migration
  def change
    create_table :categories_nominees do |t|
      t.belongs_to :category, index: true
      t.belongs_to :nominee, index: true

      t.timestamps null: false
    end
  end
end
