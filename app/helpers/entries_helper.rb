module EntriesHelper

  def master_entry
    @master = Entry.find_by(master: true)
  end

  def total_possible
    master_entry.score
  end
end
