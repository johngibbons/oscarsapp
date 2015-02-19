class Entry < ActiveRecord::Base
  has_many :categories, through: :entries_categories
  has_many :nominees, through: :entries_nominees
  has_many :entries_categories
  has_many :entries_nominees
end
