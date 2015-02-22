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
    start_time = Time.zone.local(2015, 2, 22, 15, 24)
    Time.zone.now > start_time
  end
end
