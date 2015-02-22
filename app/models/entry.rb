class Entry < ActiveRecord::Base
  has_many :categories, through: :selections
  has_many :nominees, through: :selections
  has_many :selections, dependent: :destroy
  accepts_nested_attributes_for :selections, reject_if: :all_blank

  #returns true if anser matches master
  def correct_answer?(category)
    unless @master.selections.find_by(category: category).nil? || @master.selections.find_by(category: category).nominee.nil?
      self.selections.find_by(category: category).nominee == @master.selections.find_by(category: category).nominee
    else
      return false
    end
  end

  def reset_score
    self.score = 0
  end

  def add_to_score(category)
    self.score += category.value
  end

  def update_score
    @master = Entry.find_by(master: true)
    reset_score
    unless @master.nil?
      self.categories.each do |category|
        if correct_answer?(category)
          add_to_score(category)
        end
      end
      self.save
    end
  end

  def previously_selected?(category, nominee)
    if self.selections.find_by(category_id: category.id)
      self.selections.find_by(category_id: category.id).nominee == nominee
    else
      false
    end
  end
end