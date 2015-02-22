module EntriesHelper

  def master_entry
    @master = Entry.find_by(master: true)
  end

  def total_possible
    if master_entry
      master_entry.score
    else
      return 0
    end
  end
end
