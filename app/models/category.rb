class Category < ActiveRecord::Base
  has_many :entries, through: :selections
  has_many :nominees, through: :categories_nominees
  has_many :selections
  has_many :categories_nominees
end
