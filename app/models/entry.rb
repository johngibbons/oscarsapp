class Entry < ActiveRecord::Base
  has_many :categories, through: :selections
  has_many :nominees, through: :selections
  has_many :selections, dependent: :destroy
  accepts_nested_attributes_for :selections, reject_if: :all_blank

  def update_score
    master = Entry.find_by(master: true)
    self.categories.each do |category|
      selection_by_cat = selection.find_by(category: category)
      if self.selection_by_cat.nominee = master.selection_by_cat.nominee
        self.score += category.value
        self.save
      end
    end
  end
end