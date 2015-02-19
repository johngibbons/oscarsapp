class Category < ActiveRecord::Base
  has_many :entries, through: :entries_categories
  has_many :nominees, through: :categories_nominees
  has_many :entries_categories
  has_many :categories_nominees
end
