class Nominee < ActiveRecord::Base
  has_many :categories, through: :categories_nominees
  has_many :entries, through: :entries_nominees
  has_many :categories_nominees
  has_many :entries_nominees
end
