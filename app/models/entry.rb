class Entry < ActiveRecord::Base
  has_many :categories
  has_many :nominees, through: :categories
end
