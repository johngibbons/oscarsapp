class Nominee < ActiveRecord::Base
  has_many :selections, dependent: :destroy
  has_many :entries, through: :selections
  has_many :categories, through: :categories_nominees
  has_many :categories_nominees
end
