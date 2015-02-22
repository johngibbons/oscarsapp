module SessionsHelper

  def remember(entry)
    cookies.permanent[:entry_id] = { value: entry.id }
  end

  def current_entry
    @current_entry ||= Entry.find_by(id: cookies[:entry_id])
  end

  def submitted_entry?
    !current_entry.nil?
  end

  def forget_prev_entries
    cookies.delete(:entry_id)
  end
end
