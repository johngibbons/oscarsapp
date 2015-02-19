class Entry < ActiveRecord::Base
  has_many :categories, through: :selections
  has_many :nominees, through: :selections
  has_many :selections, dependent: :destroy
  accepts_nested_attributes_for :selections, reject_if: :all_blank
end
