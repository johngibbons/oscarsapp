module EntriesHelper
  def total_possible
    master = Entry.find_by(master: true)
    master.score
  end
end
