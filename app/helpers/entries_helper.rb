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

  def show_started?
    start_time = DateTime.civil_from_format :local, 2015, 2, 22, 18, 30
    Time.zone.now.to_i > start_time.to_i
  end
end
